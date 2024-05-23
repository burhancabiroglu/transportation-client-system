import 'package:babiconsultancy/src/backend/api/transfer_wish_api.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/model/booking/booking_request.dart';
import 'package:babiconsultancy/src/backend/model/booking/transfer_wish_dto.dart';

abstract class TransferWishRepo {
  final TransferWishApi api;
  const TransferWishRepo({required this.api});

  Future<AppResult<String>> createTransferWish(BookingRequest body);
  Future<AppResult<String>> removeTransferWish(String id);
  Future<AppResult<List<TransferWishDto>>> getTransferWishesByUserId();
}

class TransferWishRepoImpl extends TransferWishRepo {
  const TransferWishRepoImpl({required super.api});
  
  @override
  Future<AppResult<String>> createTransferWish(BookingRequest body) {
    return NetworkHandler.getSafeResult(() => api.createTransferWish(body));
  }
  
  @override
  Future<AppResult<List<TransferWishDto>>> getTransferWishesByUserId() {
    return NetworkHandler.getSafeResult(() => api.getTransferWishesByUserId());
  }
  
  @override
  Future<AppResult<String>> removeTransferWish(String id) {
    return NetworkHandler.getSafeResult(() => api.removeTransferWish(id));
  }
  
}