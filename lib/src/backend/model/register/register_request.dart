import 'package:freezed_annotation/freezed_annotation.dart';

part "../../../../generated/model/register/register_request.freezed.dart";
part "../../../../generated/model/register/register_request.g.dart";

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest(
    String email,
    String name,
    String surname,
    String password,
  ) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}