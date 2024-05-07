import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/response/base_response.freezed.dart";
part "../../../../generated/model/response/base_response.g.dart";

@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse(
    T data,
  ) = _BaseResponse;

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}
