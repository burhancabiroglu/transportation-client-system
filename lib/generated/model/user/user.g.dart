// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/user/user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      createdAt: json['createdAt'] as String,
      isApproved: json['isApproved'] as bool,
      isAdmin: json['isAdmin'] as bool,
      emailVerified: json['emailVerified'] as bool,
      isBanned: json['isBanned'] as bool,
      fcmToken: json['fcmToken'] as String?,
      apnsToken: json['apnsToken'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'isApproved': instance.isApproved,
      'isAdmin': instance.isAdmin,
      'emailVerified': instance.emailVerified,
      'isBanned': instance.isBanned,
      'fcmToken': instance.fcmToken,
      'apnsToken': instance.apnsToken,
    };
