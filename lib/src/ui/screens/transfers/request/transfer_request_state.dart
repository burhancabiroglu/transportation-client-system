abstract class TransferRequestState { 
  const TransferRequestState();
  static const None = TransferRequestStateNone();
  
  const factory TransferRequestState.success({
    required String userId, 
    required String email, 
    required int transferType, 
    required String date,
    required String fullname
  }) = TransferRequestStateSuccess;

  const factory TransferRequestState.error({
    required String message
  }) = TransferRequestStateError;
}

class TransferRequestStateNone extends TransferRequestState {
    const TransferRequestStateNone();
}

class TransferRequestStateError extends TransferRequestState {
    final String message;
    const TransferRequestStateError({ required this.message });
}

class TransferRequestStateSuccess extends TransferRequestState {
    final String userId;
    final String email;
    final int transferType;
    final String date;
    final String fullname;
    const TransferRequestStateSuccess({
      required this.userId, 
      required this.email, 
      required this.transferType, 
      required this.date,
      required this.fullname
    });
}