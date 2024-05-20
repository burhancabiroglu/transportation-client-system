// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/seat/seat_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeatReservation _$SeatReservationFromJson(Map<String, dynamic> json) {
  return _SeatReservation.fromJson(json);
}

/// @nodoc
mixin _$SeatReservation {
  @JsonKey(name: 'seat_id')
  String get seatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer_id')
  String get transferId => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer_status')
  int get transferStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer_type')
  int get transferType => throw _privateConstructorUsedError;
  @JsonKey(name: 'planned_at')
  String get plannedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatReservationCopyWith<SeatReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatReservationCopyWith<$Res> {
  factory $SeatReservationCopyWith(
          SeatReservation value, $Res Function(SeatReservation) then) =
      _$SeatReservationCopyWithImpl<$Res, SeatReservation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'seat_id') String seatId,
      @JsonKey(name: 'transfer_id') String transferId,
      int status,
      @JsonKey(name: 'user_id') String userId,
      String fullname,
      String email,
      @JsonKey(name: 'transfer_status') int transferStatus,
      @JsonKey(name: 'transfer_type') int transferType,
      @JsonKey(name: 'planned_at') String plannedAt});
}

/// @nodoc
class _$SeatReservationCopyWithImpl<$Res, $Val extends SeatReservation>
    implements $SeatReservationCopyWith<$Res> {
  _$SeatReservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? transferId = null,
    Object? status = null,
    Object? userId = null,
    Object? fullname = null,
    Object? email = null,
    Object? transferStatus = null,
    Object? transferType = null,
    Object? plannedAt = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      transferStatus: null == transferStatus
          ? _value.transferStatus
          : transferStatus // ignore: cast_nullable_to_non_nullable
              as int,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as int,
      plannedAt: null == plannedAt
          ? _value.plannedAt
          : plannedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatReservationImplCopyWith<$Res>
    implements $SeatReservationCopyWith<$Res> {
  factory _$$SeatReservationImplCopyWith(_$SeatReservationImpl value,
          $Res Function(_$SeatReservationImpl) then) =
      __$$SeatReservationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'seat_id') String seatId,
      @JsonKey(name: 'transfer_id') String transferId,
      int status,
      @JsonKey(name: 'user_id') String userId,
      String fullname,
      String email,
      @JsonKey(name: 'transfer_status') int transferStatus,
      @JsonKey(name: 'transfer_type') int transferType,
      @JsonKey(name: 'planned_at') String plannedAt});
}

/// @nodoc
class __$$SeatReservationImplCopyWithImpl<$Res>
    extends _$SeatReservationCopyWithImpl<$Res, _$SeatReservationImpl>
    implements _$$SeatReservationImplCopyWith<$Res> {
  __$$SeatReservationImplCopyWithImpl(
      _$SeatReservationImpl _value, $Res Function(_$SeatReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatId = null,
    Object? transferId = null,
    Object? status = null,
    Object? userId = null,
    Object? fullname = null,
    Object? email = null,
    Object? transferStatus = null,
    Object? transferType = null,
    Object? plannedAt = null,
  }) {
    return _then(_$SeatReservationImpl(
      seatId: null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      transferId: null == transferId
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      transferStatus: null == transferStatus
          ? _value.transferStatus
          : transferStatus // ignore: cast_nullable_to_non_nullable
              as int,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as int,
      plannedAt: null == plannedAt
          ? _value.plannedAt
          : plannedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatReservationImpl implements _SeatReservation {
  const _$SeatReservationImpl(
      {@JsonKey(name: 'seat_id') required this.seatId,
      @JsonKey(name: 'transfer_id') required this.transferId,
      required this.status,
      @JsonKey(name: 'user_id') required this.userId,
      required this.fullname,
      required this.email,
      @JsonKey(name: 'transfer_status') required this.transferStatus,
      @JsonKey(name: 'transfer_type') required this.transferType,
      @JsonKey(name: 'planned_at') required this.plannedAt});

  factory _$SeatReservationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatReservationImplFromJson(json);

  @override
  @JsonKey(name: 'seat_id')
  final String seatId;
  @override
  @JsonKey(name: 'transfer_id')
  final String transferId;
  @override
  final int status;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String fullname;
  @override
  final String email;
  @override
  @JsonKey(name: 'transfer_status')
  final int transferStatus;
  @override
  @JsonKey(name: 'transfer_type')
  final int transferType;
  @override
  @JsonKey(name: 'planned_at')
  final String plannedAt;

  @override
  String toString() {
    return 'SeatReservation(seatId: $seatId, transferId: $transferId, status: $status, userId: $userId, fullname: $fullname, email: $email, transferStatus: $transferStatus, transferType: $transferType, plannedAt: $plannedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatReservationImpl &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.transferId, transferId) ||
                other.transferId == transferId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.transferStatus, transferStatus) ||
                other.transferStatus == transferStatus) &&
            (identical(other.transferType, transferType) ||
                other.transferType == transferType) &&
            (identical(other.plannedAt, plannedAt) ||
                other.plannedAt == plannedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, seatId, transferId, status,
      userId, fullname, email, transferStatus, transferType, plannedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatReservationImplCopyWith<_$SeatReservationImpl> get copyWith =>
      __$$SeatReservationImplCopyWithImpl<_$SeatReservationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatReservationImplToJson(
      this,
    );
  }
}

abstract class _SeatReservation implements SeatReservation {
  const factory _SeatReservation(
          {@JsonKey(name: 'seat_id') required final String seatId,
          @JsonKey(name: 'transfer_id') required final String transferId,
          required final int status,
          @JsonKey(name: 'user_id') required final String userId,
          required final String fullname,
          required final String email,
          @JsonKey(name: 'transfer_status') required final int transferStatus,
          @JsonKey(name: 'transfer_type') required final int transferType,
          @JsonKey(name: 'planned_at') required final String plannedAt}) =
      _$SeatReservationImpl;

  factory _SeatReservation.fromJson(Map<String, dynamic> json) =
      _$SeatReservationImpl.fromJson;

  @override
  @JsonKey(name: 'seat_id')
  String get seatId;
  @override
  @JsonKey(name: 'transfer_id')
  String get transferId;
  @override
  int get status;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get fullname;
  @override
  String get email;
  @override
  @JsonKey(name: 'transfer_status')
  int get transferStatus;
  @override
  @JsonKey(name: 'transfer_type')
  int get transferType;
  @override
  @JsonKey(name: 'planned_at')
  String get plannedAt;
  @override
  @JsonKey(ignore: true)
  _$$SeatReservationImplCopyWith<_$SeatReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
