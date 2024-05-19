class SeatReservation{
  final String seatId;
  final String transferId;
  final int status;
  final String userId;
  final String fullname;
  final String email;
  final int transferStatus;
  final int transferType;
  final String plannedAt;

  const SeatReservation({
    required this.seatId,
    required this.transferId,
    required this.status,
    required this.userId,
    required this.fullname,
    required this.email,
    required this.transferStatus,
    required this.transferType,
    required this.plannedAt,
  });
}
  
