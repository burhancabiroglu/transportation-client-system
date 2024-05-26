// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/user/user_fcm_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFcmDto _$UserFcmDtoFromJson(Map<String, dynamic> json) {
  return _UserFcmDto.fromJson(json);
}

/// @nodoc
mixin _$UserFcmDto {
  String? get apnsToken => throw _privateConstructorUsedError;
  String? get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFcmDtoCopyWith<UserFcmDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFcmDtoCopyWith<$Res> {
  factory $UserFcmDtoCopyWith(
          UserFcmDto value, $Res Function(UserFcmDto) then) =
      _$UserFcmDtoCopyWithImpl<$Res, UserFcmDto>;
  @useResult
  $Res call({String? apnsToken, String? fcmToken});
}

/// @nodoc
class _$UserFcmDtoCopyWithImpl<$Res, $Val extends UserFcmDto>
    implements $UserFcmDtoCopyWith<$Res> {
  _$UserFcmDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apnsToken = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      apnsToken: freezed == apnsToken
          ? _value.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFcmDtoImplCopyWith<$Res>
    implements $UserFcmDtoCopyWith<$Res> {
  factory _$$UserFcmDtoImplCopyWith(
          _$UserFcmDtoImpl value, $Res Function(_$UserFcmDtoImpl) then) =
      __$$UserFcmDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? apnsToken, String? fcmToken});
}

/// @nodoc
class __$$UserFcmDtoImplCopyWithImpl<$Res>
    extends _$UserFcmDtoCopyWithImpl<$Res, _$UserFcmDtoImpl>
    implements _$$UserFcmDtoImplCopyWith<$Res> {
  __$$UserFcmDtoImplCopyWithImpl(
      _$UserFcmDtoImpl _value, $Res Function(_$UserFcmDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apnsToken = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$UserFcmDtoImpl(
      apnsToken: freezed == apnsToken
          ? _value.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFcmDtoImpl implements _UserFcmDto {
  const _$UserFcmDtoImpl({this.apnsToken, this.fcmToken});

  factory _$UserFcmDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFcmDtoImplFromJson(json);

  @override
  final String? apnsToken;
  @override
  final String? fcmToken;

  @override
  String toString() {
    return 'UserFcmDto(apnsToken: $apnsToken, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFcmDtoImpl &&
            (identical(other.apnsToken, apnsToken) ||
                other.apnsToken == apnsToken) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apnsToken, fcmToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFcmDtoImplCopyWith<_$UserFcmDtoImpl> get copyWith =>
      __$$UserFcmDtoImplCopyWithImpl<_$UserFcmDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFcmDtoImplToJson(
      this,
    );
  }
}

abstract class _UserFcmDto implements UserFcmDto {
  const factory _UserFcmDto({final String? apnsToken, final String? fcmToken}) =
      _$UserFcmDtoImpl;

  factory _UserFcmDto.fromJson(Map<String, dynamic> json) =
      _$UserFcmDtoImpl.fromJson;

  @override
  String? get apnsToken;
  @override
  String? get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$UserFcmDtoImplCopyWith<_$UserFcmDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
