import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_wish_repo.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferRequestCubit extends Cubit<TransferRequestState> {
  final TransferWishRepo repo;
  TransferRequestCubit({
    required this.repo
  }): super(TransferRequestState.none);

  void fetch() {
    repo.getTransferWishesByUserId()
      .successListener((data) { 
        if(data.isEmpty) {
          emit(TransferRequestState.empty);
        } else {
          emit(TransferRequestState.success(data));
        }
      })
      .errorListener((error) {
        emit(TransferRequestState.empty);
      });
  }

}