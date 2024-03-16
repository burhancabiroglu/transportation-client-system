// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/backend/model/book/book_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookRequest _$BookRequestFromJson(Map<String, dynamic> json) {
  return _BookRequest.fromJson(json);
}

/// @nodoc
mixin _$BookRequest {
  String get id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRequestCopyWith<BookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRequestCopyWith<$Res> {
  factory $BookRequestCopyWith(
          BookRequest value, $Res Function(BookRequest) then) =
      _$BookRequestCopyWithImpl<$Res, BookRequest>;
  @useResult
  $Res call({String id, int status, String date, String type});
}

/// @nodoc
class _$BookRequestCopyWithImpl<$Res, $Val extends BookRequest>
    implements $BookRequestCopyWith<$Res> {
  _$BookRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookRequestImplCopyWith<$Res>
    implements $BookRequestCopyWith<$Res> {
  factory _$$BookRequestImplCopyWith(
          _$BookRequestImpl value, $Res Function(_$BookRequestImpl) then) =
      __$$BookRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int status, String date, String type});
}

/// @nodoc
class __$$BookRequestImplCopyWithImpl<$Res>
    extends _$BookRequestCopyWithImpl<$Res, _$BookRequestImpl>
    implements _$$BookRequestImplCopyWith<$Res> {
  __$$BookRequestImplCopyWithImpl(
      _$BookRequestImpl _value, $Res Function(_$BookRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$BookRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookRequestImpl implements _BookRequest {
  const _$BookRequestImpl(
      {required this.id,
      required this.status,
      required this.date,
      required this.type});

  factory _$BookRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookRequestImplFromJson(json);

  @override
  final String id;
  @override
  final int status;
  @override
  final String date;
  @override
  final String type;

  @override
  String toString() {
    return 'BookRequest(id: $id, status: $status, date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, date, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookRequestImplCopyWith<_$BookRequestImpl> get copyWith =>
      __$$BookRequestImplCopyWithImpl<_$BookRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookRequestImplToJson(
      this,
    );
  }
}

abstract class _BookRequest implements BookRequest {
  const factory _BookRequest(
      {required final String id,
      required final int status,
      required final String date,
      required final String type}) = _$BookRequestImpl;

  factory _BookRequest.fromJson(Map<String, dynamic> json) =
      _$BookRequestImpl.fromJson;

  @override
  String get id;
  @override
  int get status;
  @override
  String get date;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$BookRequestImplCopyWith<_$BookRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
