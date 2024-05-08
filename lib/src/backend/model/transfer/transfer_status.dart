import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/transfer/transfer_status.freezed.dart";
part "../../../../generated/model/transfer/transfer_status.g.dart";

@freezed
class TransferStatus with _$TransferStatus{
  const factory TransferStatus({
    required int id,
    required String name,
    required String color
  }) = _TransferStatus;

   factory TransferStatus.fromJson(Map<String, dynamic> json) =>
      _$TransferStatusFromJson(json);
}