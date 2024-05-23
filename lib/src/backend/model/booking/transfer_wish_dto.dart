import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/booking/transfer_wish_dto.freezed.dart";
part "../../../../generated/model/booking/transfer_wish_dto.g.dart";

@freezed
class TransferWishDto with _$TransferWishDto {
  const factory TransferWishDto({
    @JsonKey(name: "user_id")
    required String userId,
    @JsonKey(name: "created_at")
    required String createdAt,
    required String id,
    @JsonKey(name: "transfer_type")
    required int transferType,
    @JsonKey(name: "additional_note")
    required String additionalNote,
    required String email,
    required String fullname,
  }) = _TransferWishDto;

  factory TransferWishDto.fromJson(Map<String, dynamic> json) =>
      _$TransferWishDtoFromJson(json);
}