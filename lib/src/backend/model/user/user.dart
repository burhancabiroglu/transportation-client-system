import 'package:freezed_annotation/freezed_annotation.dart';
part '../../../../generated/model/user/user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String fullname,
    required String email,
  }) = _User;
}