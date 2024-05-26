import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/user/user_fcm_dto.freezed.dart';
part '../../../../generated/model/user/user_fcm_dto.g.dart';

@freezed
class UserFcmDto with _$UserFcmDto {
  const factory UserFcmDto({
    String? apnsToken,
    String? fcmToken
  }) = _UserFcmDto;

    factory UserFcmDto.fromJson(Map<String, dynamic> json) =>
      _$UserFcmDtoFromJson(json);
}

