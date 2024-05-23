import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/transfer_wish_repo.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/ui/widgets/book_request/transfer_request_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransferRequestBoxCubit extends Cubit<TransferRequestState> {
  final localization = LocalizationManager();
  final TransferWishRepo repo;
  TransferRequestBoxCubit({
    required this.repo
  }): super(TransferRequestState.none);

  void fetch() {
    repo.getTransferWishesByUserId()
      .successListener((data) { 
        if(data.isEmpty) {
          emit(TransferRequestState.empty);
        } else {
          final list = data.map((e) {
            final rawDate = DateTime.fromMicrosecondsSinceEpoch(int.parse(e.createdAt) * 1000);
            final date = DateFormat.yMMMMd(localization.currentCode).format(rawDate);
            return e.copyWith(createdAt: date);
          }).toList();
          emit(TransferRequestState.success(list));
        }
      })
      .errorListener((error) {
        emit(TransferRequestState.empty);
      });
  }

}