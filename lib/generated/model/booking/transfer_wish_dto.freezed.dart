// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/booking/transfer_wish_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferWishDto _$TransferWishDtoFromJson(Map<String, dynamic> json) {
  return _TransferWishDto.fromJson(json);
}

/// @nodoc
mixin _$TransferWishDto {
  String get userId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get transferType => throw _privateConstructorUsedError;
  String get additionalNote => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferWishDtoCopyWith<TransferWishDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferWishDtoCopyWith<$Res> {
  factory $TransferWishDtoCopyWith(
          TransferWishDto value, $Res Function(TransferWishDto) then) =
      _$TransferWishDtoCopyWithImpl<$Res, TransferWishDto>;
  @useResult
  $Res call(
      {String userId,
      String createdAt,
      String id,
      int transferType,
      String additionalNote,
      String email,
      String fullname});
}

/// @nodoc
class _$TransferWishDtoCopyWithImpl<$Res, $Val extends TransferWishDto>
    implements $TransferWishDtoCopyWith<$Res> {
  _$TransferWishDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? id = null,
    Object? transferType = null,
    Object? additionalNote = null,
    Object? email = null,
    Object? fullname = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as int,
      additionalNote: null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferWishDtoImplCopyWith<$Res>
    implements $TransferWishDtoCopyWith<$Res> {
  factory _$$TransferWishDtoImplCopyWith(_$TransferWishDtoImpl value,
          $Res Function(_$TransferWishDtoImpl) then) =
      __$$TransferWishDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String createdAt,
      String id,
      int transferType,
      String additionalNote,
      String email,
      String fullname});
}

/// @nodoc
class __$$TransferWishDtoImplCopyWithImpl<$Res>
    extends _$TransferWishDtoCopyWithImpl<$Res, _$TransferWishDtoImpl>
    implements _$$TransferWishDtoImplCopyWith<$Res> {
  __$$TransferWishDtoImplCopyWithImpl(
      _$TransferWishDtoImpl _value, $Res Function(_$TransferWishDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? id = null,
    Object? transferType = null,
    Object? additionalNote = null,
    Object? email = null,
    Object? fullname = null,
  }) {
    return _then(_$TransferWishDtoImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as int,
      additionalNote: null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferWishDtoImpl implements _TransferWishDto {
  const _$TransferWishDtoImpl(
      {required this.userId,
      required this.createdAt,
      required this.id,
      required this.transferType,
      required this.additionalNote,
      required this.email,
      required this.fullname});

  factory _$TransferWishDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferWishDtoImplFromJson(json);

  @override
  final String userId;
  @override
  final String createdAt;
  @override
  final String id;
  @override
  final int transferType;
  @override
  final String additionalNote;
  @override
  final String email;
  @override
  final String fullname;

  @override
  String toString() {
    return 'TransferWishDto(userId: $userId, createdAt: $createdAt, id: $id, transferType: $transferType, additionalNote: $additionalNote, email: $email, fullname: $fullname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferWishDtoImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transferType, transferType) ||
                other.transferType == transferType) &&
            (identical(other.additionalNote, additionalNote) ||
                other.additionalNote == additionalNote) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, createdAt, id,
      transferType, additionalNote, email, fullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferWishDtoImplCopyWith<_$TransferWishDtoImpl> get copyWith =>
      __$$TransferWishDtoImplCopyWithImpl<_$TransferWishDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferWishDtoImplToJson(
      this,
    );
  }
}

abstract class _TransferWishDto implements TransferWishDto {
  const factory _TransferWishDto(
      {required final String userId,
      required final String createdAt,
      required final String id,
      required final int transferType,
      required final String additionalNote,
      required final String email,
      required final String fullname}) = _$TransferWishDtoImpl;

  factory _TransferWishDto.fromJson(Map<String, dynamic> json) =
      _$TransferWishDtoImpl.fromJson;

  @override
  String get userId;
  @override
  String get createdAt;
  @override
  String get id;
  @override
  int get transferType;
  @override
  String get additionalNote;
  @override
  String get email;
  @override
  String get fullname;
  @override
  @JsonKey(ignore: true)
  _$$TransferWishDtoImplCopyWith<_$TransferWishDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
