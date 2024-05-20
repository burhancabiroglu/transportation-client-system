import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/seat/seat_reservation.freezed.dart";
part "../../../../generated/model/seat/seat_reservation.g.dart";

@freezed
class SeatReservation with _$SeatReservation {
  const factory SeatReservation({
    @JsonKey(name: 'seat_id') required String seatId,
    @JsonKey(name: 'transfer_id') required String transferId,
    required int status,
    @JsonKey(name: 'user_id') required String userId,
    required String fullname,
    required String email,
    @JsonKey(name: 'transfer_status') required int transferStatus,
    @JsonKey(name: 'transfer_type') required int transferType,
    @JsonKey(name: 'planned_at') required String plannedAt,
  }) = _SeatReservation;

  factory SeatReservation.fromJson(Map<String, dynamic> json) => _$SeatReservationFromJson(json);
}

