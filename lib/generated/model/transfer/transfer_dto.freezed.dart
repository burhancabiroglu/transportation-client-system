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
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transfer_type')
  int get transferType => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_note')
  String get additionalNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'planned_at')
  String get plannedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'seat_count')
  int get seatCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'transfer_type') int transferType,
      @JsonKey(name: 'additional_note') String additionalNote,
      @JsonKey(name: 'planned_at') String plannedAt,
      @JsonKey(name: 'seat_count') int seatCount,
      @JsonKey(name: 'status') int status});
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
    Object? status = null,
  }) {
    return _then(_value.copyWith(
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
      plannedAt: null == plannedAt
          ? _value.plannedAt
          : plannedAt // ignore: cast_nullable_to_non_nullable
              as String,
      seatCount: null == seatCount
          ? _value.seatCount
          : seatCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'transfer_type') int transferType,
      @JsonKey(name: 'additional_note') String additionalNote,
      @JsonKey(name: 'planned_at') String plannedAt,
      @JsonKey(name: 'seat_count') int seatCount,
      @JsonKey(name: 'status') int status});
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
    Object? status = null,
  }) {
    return _then(_$TransferDtoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == transferType
          ? _value.transferType
          : transferType // ignore: cast_nullable_to_non_nullable
              as int,
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
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferDtoImpl implements _TransferDto {
  const _$TransferDtoImpl(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'transfer_type') this.transferType,
      @JsonKey(name: 'additional_note') this.additionalNote,
      @JsonKey(name: 'planned_at') this.plannedAt,
      @JsonKey(name: 'seat_count') this.seatCount,
      @JsonKey(name: 'status') this.status);

  factory _$TransferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'transfer_type')
  final int transferType;
  @override
  @JsonKey(name: 'additional_note')
  final String additionalNote;
  @override
  @JsonKey(name: 'planned_at')
  final String plannedAt;
  @override
  @JsonKey(name: 'seat_count')
  final int seatCount;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'TransferDto(id: $id, transferType: $transferType, additionalNote: $additionalNote, plannedAt: $plannedAt, seatCount: $seatCount, status: $status)';
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
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transferType, additionalNote,
      plannedAt, seatCount, status);

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
      @JsonKey(name: 'id') final String id,
      @JsonKey(name: 'transfer_type') final int transferType,
      @JsonKey(name: 'additional_note') final String additionalNote,
      @JsonKey(name: 'planned_at') final String plannedAt,
      @JsonKey(name: 'seat_count') final int seatCount,
      @JsonKey(name: 'status') final int status) = _$TransferDtoImpl;

  factory _TransferDto.fromJson(Map<String, dynamic> json) =
      _$TransferDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'transfer_type')
  int get transferType;
  @override
  @JsonKey(name: 'additional_note')
  String get additionalNote;
  @override
  @JsonKey(name: 'planned_at')
  String get plannedAt;
  @override
  @JsonKey(name: 'seat_count')
  int get seatCount;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$TransferDtoImplCopyWith<_$TransferDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
