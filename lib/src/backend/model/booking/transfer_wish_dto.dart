// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/booking/transfer_wish_dto.freezed.dart";
part "../../../../generated/model/booking/transfer_wish_dto.g.dart";

@freezed
abstract class TransferWishDto with _$TransferWishDto {
  const factory TransferWishDto({
    required String id,
    @JsonKey(name: "transfer_type")
    required int transferType,
    @JsonKey(name: "additional_note")
    String? additionalNote,
    required String fullname,
    required String email,
    @JsonKey(name: "created_At")
    required String createdAt,
  }) = _TransferWishDto;

  factory TransferWishDto.fromJson(Map<String, dynamic> json) =>
      _$TransferWishDtoFromJson(json);
}