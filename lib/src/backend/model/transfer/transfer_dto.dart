// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/transfer/transfer_dto.freezed.dart';
part '../../../../generated/model/transfer/transfer_dto.g.dart';

@freezed
class TransferDto with _$TransferDto {
  const factory TransferDto(
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'transfer_type') int transferType,
    @JsonKey(name: 'additional_note') String additionalNote,
    @JsonKey(name: 'planned_at')  String plannedAt,
    @JsonKey(name: 'seat_count') int seatCount,
    @JsonKey(name: 'status') int status,
  ) = _TransferDto;

  factory TransferDto.fromJson(Map<String, dynamic> json) => _$TransferDtoFromJson(json);
}
