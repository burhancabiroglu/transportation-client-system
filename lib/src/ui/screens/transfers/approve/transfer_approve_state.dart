abstract class TransferApproveState { 
  const TransferApproveState();
  static const None = TransferApproveStateNone();
  
  const factory TransferApproveState.success({
    required String userId, 
    required String email, 
    required int transferType, 
    required String date,
    required String fullname,
    required String seatId,
    required String plannedAt
  }) = TransferApproveStateSuccess;

  const factory TransferApproveState.error({
    required String message
  }) = TransferApproveStateError;
}

class TransferApproveStateNone extends TransferApproveState {
    const TransferApproveStateNone();
}

class TransferApproveStateError extends TransferApproveState {
    final String message;
    const TransferApproveStateError({ required this.message });
}

class TransferApproveStateSuccess extends TransferApproveState {
    final String userId;
    final String email;
    final int transferType;
    final String date;
    final String fullname;
    final String seatId;
    final String plannedAt;
    const TransferApproveStateSuccess({
      required this.userId, 
      required this.email, 
      required this.transferType, 
      required this.date,
      required this.fullname,
      required this.seatId,
      required this.plannedAt
    });
}