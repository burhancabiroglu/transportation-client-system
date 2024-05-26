import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/transfer/transfer_dto.freezed.dart';
part '../../../../generated/model/transfer/transfer_dto.g.dart';

@freezed
class TransferDto with _$TransferDto {
  const factory TransferDto(
    String id,
    String transferType,
    String additionalNote,
    String plannedAt,
    int seatCount,
    String transferStatus,
  ) = _TransferDto;

  factory TransferDto.fromJson(Map<String, dynamic> json) => _$TransferDtoFromJson(json);
}
