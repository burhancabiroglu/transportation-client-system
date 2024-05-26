import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/seat/seat_reservation.freezed.dart";
part "../../../../generated/model/seat/seat_reservation.g.dart";

@freezed
class SeatReservation with _$SeatReservation {
  const factory SeatReservation({
    required String seatId,
    required String transferId,
    required String seatStatus,
    required String userId,
    required String fullname,
    required String email,
    required String transferStatus,
    required String transferType,
    required String plannedAt,
  }) = _SeatReservation;

  factory SeatReservation.fromJson(Map<String, dynamic> json) => _$SeatReservationFromJson(json);
}

