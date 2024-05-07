import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/login/login_request.freezed.dart";
part "../../../../generated/model/login/login_request.g.dart";

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest(
    String email,
    String password,
  ) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
