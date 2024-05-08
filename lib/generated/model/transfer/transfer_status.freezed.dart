// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/transfer/transfer_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferStatus _$TransferStatusFromJson(Map<String, dynamic> json) {
  return _TransferStatus.fromJson(json);
}

/// @nodoc
mixin _$TransferStatus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferStatusCopyWith<TransferStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferStatusCopyWith<$Res> {
  factory $TransferStatusCopyWith(
          TransferStatus value, $Res Function(TransferStatus) then) =
      _$TransferStatusCopyWithImpl<$Res, TransferStatus>;
  @useResult
  $Res call({int id, String name, String color});
}

/// @nodoc
class _$TransferStatusCopyWithImpl<$Res, $Val extends TransferStatus>
    implements $TransferStatusCopyWith<$Res> {
  _$TransferStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferStatusImplCopyWith<$Res>
    implements $TransferStatusCopyWith<$Res> {
  factory _$$TransferStatusImplCopyWith(_$TransferStatusImpl value,
          $Res Function(_$TransferStatusImpl) then) =
      __$$TransferStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String color});
}

/// @nodoc
class __$$TransferStatusImplCopyWithImpl<$Res>
    extends _$TransferStatusCopyWithImpl<$Res, _$TransferStatusImpl>
    implements _$$TransferStatusImplCopyWith<$Res> {
  __$$TransferStatusImplCopyWithImpl(
      _$TransferStatusImpl _value, $Res Function(_$TransferStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
  }) {
    return _then(_$TransferStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferStatusImpl implements _TransferStatus {
  const _$TransferStatusImpl(
      {required this.id, required this.name, required this.color});

  factory _$TransferStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferStatusImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String color;

  @override
  String toString() {
    return 'TransferStatus(id: $id, name: $name, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferStatusImplCopyWith<_$TransferStatusImpl> get copyWith =>
      __$$TransferStatusImplCopyWithImpl<_$TransferStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferStatusImplToJson(
      this,
    );
  }
}

abstract class _TransferStatus implements TransferStatus {
  const factory _TransferStatus(
      {required final int id,
      required final String name,
      required final String color}) = _$TransferStatusImpl;

  factory _TransferStatus.fromJson(Map<String, dynamic> json) =
      _$TransferStatusImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$TransferStatusImplCopyWith<_$TransferStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
