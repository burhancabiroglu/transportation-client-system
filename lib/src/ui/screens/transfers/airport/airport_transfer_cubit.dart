
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_dto.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_repo.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_args.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/approve/transfer_approve_screen.dart';
import 'package:babiconsultancy/src/ui/screens/transfers/default/transfer_state.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_box_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AirportTransferCubit extends Cubit<TransferState> {
  TransferDto? transfer;
  final transferStatus = TransferStatus.PLANNED;
  final transferType = TransferType.AIRPORT;

  final TransferRepo repo;

  AirportTransferCubit({
    required this.repo
  }): super(TransferState.none) {
    fetch();
  }

  void fetch() {
    EasyLoading.show();
    repo.getTransfersByQuery(transferStatus.id,transferType.id)
      .successListener((data) {
        if(data.isEmpty) {
          return emit(TransferState.empty);
        }
        repo.getSeatsByTransferId(data.last.id).successListener((data) {
          return emit(TransferState.seatSelection(data: data.asMap()));
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
      plannedAt: transfer?.plannedAt ?? ""
    );
    CoreRouter.main.pushNamed(
      TransferApproveScreen.route,
      arguments: { TransferApproveScreen.argsKey : args }
    );
  }
}