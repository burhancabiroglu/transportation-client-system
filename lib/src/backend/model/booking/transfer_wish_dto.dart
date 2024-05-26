import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/booking/transfer_wish_dto.freezed.dart";
part "../../../../generated/model/booking/transfer_wish_dto.g.dart";

@freezed
class TransferWishDto with _$TransferWishDto {
  const factory TransferWishDto({
    required String userId,
    required String createdAt,
    required String id,
    required String transferType,
    required String additionalNote,
    required String email,
    required String fullname,
  }) = _TransferWishDto;

  factory TransferWishDto.fromJson(Map<String, dynamic> json) =>
      _$TransferWishDtoFromJson(json);
}