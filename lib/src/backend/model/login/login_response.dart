import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/login/login_response.freezed.dart";
part "../../../../generated/model/login/login_response.g.dart";

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse(
    String accessToken,
  ) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}