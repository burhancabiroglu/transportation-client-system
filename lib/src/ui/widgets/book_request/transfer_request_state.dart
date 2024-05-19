import 'package:babiconsultancy/src/backend/model/booking/transfer_wish_dto.dart';

sealed class TransferRequestState {
  const TransferRequestState();
  static const none = TransferRequestsNone();
  static const empty = TransferRequestsEmpty();
  const factory TransferRequestState.success(List<TransferWishDto> requests) = TransferRequestsSuccess;
}

class TransferRequestsNone extends TransferRequestState {
  const TransferRequestsNone();
}

class TransferRequestsSuccess extends TransferRequestState {
  final List<TransferWishDto> requests;
  const TransferRequestsSuccess(this.requests);
}

class TransferRequestsEmpty extends TransferRequestState {
  const TransferRequestsEmpty();
}