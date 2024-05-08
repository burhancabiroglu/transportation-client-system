import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/seat/seat_status.freezed.dart";
part "../../../../generated/model/seat/seat_status.g.dart";

@freezed
class SeatStatus with _$SeatStatus{
  const factory SeatStatus({
    required int id,
    required String name,
    required String color
  }) = _SeatStatus;

   factory SeatStatus.fromJson(Map<String, dynamic> json) =>
      _$SeatStatusFromJson(json);
}