// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/booking/booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingRequest _$BookingRequestFromJson(Map<String, dynamic> json) {
  return _BookingRequest.fromJson(json);
}

/// @nodoc
mixin _$BookingRequest {
  String get userId => throw _privateConstructorUsedError;
  String get additionalNote => throw _privateConstructorUsedError;
  String get transferType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRequestCopyWith<BookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRequestCopyWith<$Res> {
  factory $BookingRequestCopyWith(
          BookingRequest value, $Res Function(BookingRequest) then) =
      _$BookingRequestCopyWithImpl<$Res, BookingRequest>;
  @useResult
  $Res call({String userId, String additionalNote, String transferType});
}

/// @nodoc
class _$BookingRequestCopyWithImpl<$Res, $Val extends BookingRequest>
    implements $BookingRequestCopyWith<$Res> {
  _$BookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? additionalNote = null,
    Object? transferType = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNote: null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingRequestImplCopyWith<$Res>
    implements $BookingRequestCopyWith<$Res> {
  factory _$$BookingRequestImplCopyWith(_$BookingRequestImpl value,
          $Res Function(_$BookingRequestImpl) then) =
      __$$BookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String additionalNote, String transferType});
}

/// @nodoc
class __$$BookingRequestImplCopyWithImpl<$Res>
    extends _$BookingRequestCopyWithImpl<$Res, _$BookingRequestImpl>
    implements _$$BookingRequestImplCopyWith<$Res> {
  __$$BookingRequestImplCopyWithImpl(
      _$BookingRequestImpl _value, $Res Function(_$BookingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? additionalNote = null,
    Object? transferType = null,
  }) {
    return _then(_$BookingRequestImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingRequestImpl implements _BookingRequest {
  const _$BookingRequestImpl(
      this.userId, this.additionalNote, this.transferType);

  factory _$BookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String additionalNote;
  @override
  final String transferType;

  @override
  String toString() {
    return 'BookingRequest(userId: $userId, additionalNote: $additionalNote, transferType: $transferType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.additionalNote, additionalNote) ||
                other.additionalNote == additionalNote) &&
            (identical(other.transferType, transferType) ||
                other.transferType == transferType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, additionalNote, transferType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRequestImplCopyWith<_$BookingRequestImpl> get copyWith =>
      __$$BookingRequestImplCopyWithImpl<_$BookingRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingRequestImplToJson(
      this,
    );
  }
}

abstract class _BookingRequest implements BookingRequest {
  const factory _BookingRequest(
      final String userId,
      final String additionalNote,
      final String transferType) = _$BookingRequestImpl;

  factory _BookingRequest.fromJson(Map<String, dynamic> json) =
      _$BookingRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get additionalNote;
  @override
  String get transferType;
  @override
  @JsonKey(ignore: true)
  _$$BookingRequestImplCopyWith<_$BookingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
