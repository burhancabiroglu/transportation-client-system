import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/seat/seat_dto.freezed.dart";
part "../../../../generated/model/seat/seat_dto.g.dart";


@freezed
class SeatDto with _$SeatDto {
  const factory SeatDto({
    required String seatId,
    required String transferId,
    required String seatStatus,
    String? userId,
    String? fullname,
    String? email,
    required bool informationGiven,
  }) = _SeatDto;

  factory SeatDto.fromJson(Map<String, dynamic> json) =>
      _$SeatDtoFromJson(json);
}