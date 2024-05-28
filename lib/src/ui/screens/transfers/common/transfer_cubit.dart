import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_manager.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_state.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_args.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/common/transfer_state.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_box_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

abstract class TransferCubit extends Cubit<TransferState> {
  abstract final TransferStatus transferStatus;
  abstract final TransferType transferType;

  final TransferRepo repo;
  final SessionManager session;

  TransferCubit({
    required this.repo,
    required this.session

  }): super(TransferState.none) {
    fetch();
  }

  User get user {
    final sessionState =  session.state;
    assert(sessionState is Authorized, "The user not authorized");
    return (sessionState as Authorized).user;
  } 

  void fetch() {
    EasyLoading.show();
    repo.getTransfersByQuery(transferStatus.id,transferType.id)
      .successListener((transfers) {
        if(transfers.isEmpty) {
          return emit(TransferState.empty);
        }
        repo.getSeatsByTransferId(transfers.last.id).successListener((seats) {
          final indexWhere = seats.indexWhere((element) => element.userId == user.uid);
          final data = seats.map((e) {
            if(e.userId == user.uid){
              return e.copyWith(seatStatus: SeatBoxState.SELECTED.id);
            }
            return e;
          }).toList().asMap();

          return emit(
            TransferState.seatSelection(
              data: data,
              transfer: transfers.last,
              alreadyFound: indexWhere != -1
            )
          );
        });
      })
      .completeListener((result) {
        EasyLoading.dismiss();
      });
  }

  void onStateChanged(
    int index, 
    SeatDto otherState
  ) {
    final currentState =  state as TransferSeatSelection;
    if(currentState.alreadyFound) return;
    if(otherState.seatStatus == SeatBoxState.OCCUPIED.id) return;
      final Map<int, SeatDto> data = Map.from(currentState.data);
      data[index] = otherState;
      if(currentState.previousSelected != null) {
        final prev = data[currentState.previousSelected!]!;
        data[currentState.previousSelected!] = prev.copyWith(seatStatus: SeatBoxState.AVAILABLE.id);
      }
      emit(TransferSeatSelection(data: data, previousSelected: index));
  }

  void navigateToApprove() {
    final currentState = state as TransferSeatSelection;
    final args = TransferApproveArgs(
      type: transferType.id,
      seatId: currentState.data[currentState.previousSelected!]?.seatId ?? "",
      plannedAt: state.transfer?.plannedAt ?? ""
    );
    CoreRouter.main.pushNamed(
      TransferApproveScreen.route,
      arguments: { TransferApproveScreen.argsKey : args }
    );
  }
}