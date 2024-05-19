import 'package:babiconsultancy/src/backend/model/seat/seat_reservation.dart';

sealed class TransferBoxState {
  const TransferBoxState();
  const factory TransferBoxState.success({
     required List<SeatReservation> reservations
  }) = TransferBoxStateSuccess;
  
  static const none = TransferBoxStateNone();
  static const empty = TransferBoxStateEmpty();
}


class TransferBoxStateNone extends TransferBoxState{
  const TransferBoxStateNone();
}

class TransferBoxStateEmpty extends TransferBoxState{
  const TransferBoxStateEmpty();
}


class TransferBoxStateSuccess extends TransferBoxState{
  final List<SeatReservation> reservations;
  const TransferBoxStateSuccess({
    required this.reservations, 
  });
}