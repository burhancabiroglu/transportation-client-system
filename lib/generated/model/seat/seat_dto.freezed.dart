// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/seat/seat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeatDto _$SeatDtoFromJson(Map<String, dynamic> json) {
  return _SeatDto.fromJson(json);
}

/// @nodoc
mixin _$SeatDto {
  String get seatId => throw _privateConstructorUsedError;
  String get transferId => throw _privateConstructorUsedError;
  String get seatStatus => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get informationGiven => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatDtoCopyWith<SeatDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatDtoCopyWith<$Res> {
  factory $SeatDtoCopyWith(SeatDto value, $Res Function(SeatDto) then) =
      _$SeatDtoCopyWithImpl<$Res, SeatDto>;
  @useResult
  $Res call(
      {String seatId,
      String transferId,
      String seatStatus,
      String? userId,
      String? fullname,
      String? email,
      bool informationGiven});
}

/// @nodoc
class _$SeatDtoCopyWithImpl<$Res, $Val extends SeatDto>
    implements $SeatDtoCopyWith<$Res> {
  _$SeatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? transferId = null,
    Object? seatStatus = null,
    Object? userId = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? informationGiven = null,
  }) {
    return _then(_value.copyWith(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      transferId: null == transferId
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as String,
      seatStatus: null == seatStatus
          ? _value.seatStatus
          : seatStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      informationGiven: null == informationGiven
          ? _value.informationGiven
          : informationGiven // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatDtoImplCopyWith<$Res> implements $SeatDtoCopyWith<$Res> {
  factory _$$SeatDtoImplCopyWith(
          _$SeatDtoImpl value, $Res Function(_$SeatDtoImpl) then) =
      __$$SeatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String seatId,
      String transferId,
      String seatStatus,
      String? userId,
      String? fullname,
      String? email,
      bool informationGiven});
}

/// @nodoc
class __$$SeatDtoImplCopyWithImpl<$Res>
    extends _$SeatDtoCopyWithImpl<$Res, _$SeatDtoImpl>
    implements _$$SeatDtoImplCopyWith<$Res> {
  __$$SeatDtoImplCopyWithImpl(
      _$SeatDtoImpl _value, $Res Function(_$SeatDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? transferId = null,
    Object? seatStatus = null,
    Object? userId = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? informationGiven = null,
  }) {
    return _then(_$SeatDtoImpl(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      transferId: null == transferId
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as String,
      seatStatus: null == seatStatus
          ? _value.seatStatus
          : seatStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      informationGiven: null == informationGiven
          ? _value.informationGiven
          : informationGiven // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatDtoImpl implements _SeatDto {
  const _$SeatDtoImpl(
      {required this.seatId,
      required this.transferId,
      required this.seatStatus,
      this.userId,
      this.fullname,
      this.email,
      required this.informationGiven});

  factory _$SeatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatDtoImplFromJson(json);

  @override
  final String seatId;
  @override
  final String transferId;
  @override
  final String seatStatus;
  @override
  final String? userId;
  @override
  final String? fullname;
  @override
  final String? email;
  @override
  final bool informationGiven;

  @override
  String toString() {
    return 'SeatDto(seatId: $seatId, transferId: $transferId, seatStatus: $seatStatus, userId: $userId, fullname: $fullname, email: $email, informationGiven: $informationGiven)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatDtoImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.transferId, transferId) ||
                other.transferId == transferId) &&
            (identical(other.seatStatus, seatStatus) ||
                other.seatStatus == seatStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.informationGiven, informationGiven) ||
                other.informationGiven == informationGiven));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seatId, transferId, seatStatus,
      userId, fullname, email, informationGiven);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatDtoImplCopyWith<_$SeatDtoImpl> get copyWith =>
      __$$SeatDtoImplCopyWithImpl<_$SeatDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatDtoImplToJson(
      this,
    );
  }
}

abstract class _SeatDto implements SeatDto {
  const factory _SeatDto(
      {required final String seatId,
      required final String transferId,
      required final String seatStatus,
      final String? userId,
      final String? fullname,
      final String? email,
      required final bool informationGiven}) = _$SeatDtoImpl;

  factory _SeatDto.fromJson(Map<String, dynamic> json) = _$SeatDtoImpl.fromJson;

  @override
  String get seatId;
  @override
  String get transferId;
  @override
  String get seatStatus;
  @override
  String? get userId;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  bool get informationGiven;
  @override
  @JsonKey(ignore: true)
  _$$SeatDtoImplCopyWith<_$SeatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
