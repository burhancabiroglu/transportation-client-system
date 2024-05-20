import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/user/user.freezed.dart';
part '../../../../generated/model/user/user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String name,
    required String surname,
    required String email,
    required String createdAt,
    required bool isApproved,
    required bool isAdmin,
    required bool emailVerified,
    required bool isBanned,
  }) = _User;
  
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

}

extension UserExtension on User {
  String get fullname => "$name $surname";
}