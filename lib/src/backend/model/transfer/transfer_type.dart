
import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/transfer/transfer_type.freezed.dart";
part "../../../../generated/model/transfer/transfer_type.g.dart";

@freezed
class TransferType with _$TransferType{
  const factory TransferType({
    required int id,
    required String name,
    required String icon
  }) = _TransferType;

   factory TransferType.fromJson(Map<String, dynamic> json) =>
      _$TransferTypeFromJson(json);
}