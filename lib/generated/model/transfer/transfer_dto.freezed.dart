// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/transfer/transfer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferDto _$TransferDtoFromJson(Map<String, dynamic> json) {
  return _TransferDto.fromJson(json);
}

/// @nodoc
mixin _$TransferDto {
  String get id => throw _privateConstructorUsedError;
  String get transferType => throw _privateConstructorUsedError;
  String get additionalNote => throw _privateConstructorUsedError;
  String get plannedAt => throw _privateConstructorUsedError;
  int get seatCount => throw _privateConstructorUsedError;
  String get transferStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferDtoCopyWith<TransferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferDtoCopyWith<$Res> {
  factory $TransferDtoCopyWith(
          TransferDto value, $Res Function(TransferDto) then) =
      _$TransferDtoCopyWithImpl<$Res, TransferDto>;
  @useResult
  $Res call(
      {String id,
      String transferType,
      String additionalNote,
      String plannedAt,
      int seatCount,
      String transferStatus});
}

/// @nodoc
class _$TransferDtoCopyWithImpl<$Res, $Val extends TransferDto>
    implements $TransferDtoCopyWith<$Res> {
  _$TransferDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transferType = null,
    Object? additionalNote = null,
    Object? plannedAt = null,
    Object? seatCount = null,
    Object? transferStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transferType: null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
      additionalNote: null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      plannedAt: null == plannedAt
          ? _value.plannedAt
          : plannedAt // ignore: cast_nullable_to_non_nullable
              as String,
      seatCount: null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
              as int,
      transferStatus: null == transferStatus
          ? _value.transferStatus
          : transferStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferDtoImplCopyWith<$Res>
    implements $TransferDtoCopyWith<$Res> {
  factory _$$TransferDtoImplCopyWith(
          _$TransferDtoImpl value, $Res Function(_$TransferDtoImpl) then) =
      __$$TransferDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String transferType,
      String additionalNote,
      String plannedAt,
      int seatCount,
      String transferStatus});
}

/// @nodoc
class __$$TransferDtoImplCopyWithImpl<$Res>
    extends _$TransferDtoCopyWithImpl<$Res, _$TransferDtoImpl>
    implements _$$TransferDtoImplCopyWith<$Res> {
  __$$TransferDtoImplCopyWithImpl(
      _$TransferDtoImpl _value, $Res Function(_$TransferDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transferType = null,
    Object? additionalNote = null,
    Object? plannedAt = null,
    Object? seatCount = null,
    Object? transferStatus = null,
  }) {
    return _then(_$TransferDtoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as String,
      null == additionalNote
          ? _value.additionalNote
          : additionalNote // ignore: cast_nullable_to_non_nullable
              as String,
      null == plannedAt
          ? _value.plannedAt
          : plannedAt // ignore: cast_nullable_to_non_nullable
              as String,
      null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == transferStatus
          ? _value.transferStatus
          : transferStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferDtoImpl implements _TransferDto {
  const _$TransferDtoImpl(this.id, this.transferType, this.additionalNote,
      this.plannedAt, this.seatCount, this.transferStatus);

  factory _$TransferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String transferType;
  @override
  final String additionalNote;
  @override
  final String plannedAt;
  @override
  final int seatCount;
  @override
  final String transferStatus;

  @override
  String toString() {
    return 'TransferDto(id: $id, transferType: $transferType, additionalNote: $additionalNote, plannedAt: $plannedAt, seatCount: $seatCount, transferStatus: $transferStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transferType, transferType) ||
                other.transferType == transferType) &&
            (identical(other.additionalNote, additionalNote) ||
                other.additionalNote == additionalNote) &&
            (identical(other.plannedAt, plannedAt) ||
                other.plannedAt == plannedAt) &&
            (identical(other.seatCount, seatCount) ||
                other.seatCount == seatCount) &&
            (identical(other.transferStatus, transferStatus) ||
                other.transferStatus == transferStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transferType, additionalNote,
      plannedAt, seatCount, transferStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferDtoImplCopyWith<_$TransferDtoImpl> get copyWith =>
      __$$TransferDtoImplCopyWithImpl<_$TransferDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferDtoImplToJson(
      this,
    );
  }
}

abstract class _TransferDto implements TransferDto {
  const factory _TransferDto(
      final String id,
      final String transferType,
      final String additionalNote,
      final String plannedAt,
      final int seatCount,
      final String transferStatus) = _$TransferDtoImpl;

  factory _TransferDto.fromJson(Map<String, dynamic> json) =
      _$TransferDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get transferType;
  @override
  String get additionalNote;
  @override
  String get plannedAt;
  @override
  int get seatCount;
  @override
  String get transferStatus;
  @override
  @JsonKey(ignore: true)
  _$$TransferDtoImplCopyWith<_$TransferDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
