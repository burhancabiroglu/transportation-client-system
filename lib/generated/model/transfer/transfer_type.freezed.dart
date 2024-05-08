// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/transfer/transfer_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferType _$TransferTypeFromJson(Map<String, dynamic> json) {
  return _TransferType.fromJson(json);
}

/// @nodoc
mixin _$TransferType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferTypeCopyWith<TransferType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferTypeCopyWith<$Res> {
  factory $TransferTypeCopyWith(
          TransferType value, $Res Function(TransferType) then) =
      _$TransferTypeCopyWithImpl<$Res, TransferType>;
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class _$TransferTypeCopyWithImpl<$Res, $Val extends TransferType>
    implements $TransferTypeCopyWith<$Res> {
  _$TransferTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferTypeImplCopyWith<$Res>
    implements $TransferTypeCopyWith<$Res> {
  factory _$$TransferTypeImplCopyWith(
          _$TransferTypeImpl value, $Res Function(_$TransferTypeImpl) then) =
      __$$TransferTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String icon});
}

/// @nodoc
class __$$TransferTypeImplCopyWithImpl<$Res>
    extends _$TransferTypeCopyWithImpl<$Res, _$TransferTypeImpl>
    implements _$$TransferTypeImplCopyWith<$Res> {
  __$$TransferTypeImplCopyWithImpl(
      _$TransferTypeImpl _value, $Res Function(_$TransferTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$TransferTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferTypeImpl implements _TransferType {
  const _$TransferTypeImpl(
      {required this.id, required this.name, required this.icon});

  factory _$TransferTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;

  @override
  String toString() {
    return 'TransferType(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferTypeImplCopyWith<_$TransferTypeImpl> get copyWith =>
      __$$TransferTypeImplCopyWithImpl<_$TransferTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferTypeImplToJson(
      this,
    );
  }
}

abstract class _TransferType implements TransferType {
  const factory _TransferType(
      {required final int id,
      required final String name,
      required final String icon}) = _$TransferTypeImpl;

  factory _TransferType.fromJson(Map<String, dynamic> json) =
      _$TransferTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$TransferTypeImplCopyWith<_$TransferTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
