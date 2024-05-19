import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_repo.dart';
import 'package:babiconsultancy/src/ui/widgets/ticket/transfer_box_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferBoxCubit extends Cubit<TransferBoxState> {
  final TransferRepo repo;
  TransferBoxCubit({
    required this.repo
  }): super(TransferBoxState.none);


  void fetch() {
    /*repo.getSeatReservation()
      .successListener((data) {
        if(data.isEmpty) {
          emit(TransferBoxState.empty);
        } else {
          emit(TransferBoxState.success(reservations: data));
        }
      })
      .errorListener((error) {
         emit(TransferBoxState.empty);
      });*/
  }
}