// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestImpl _$$BookingRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookingRequestImpl(
      id: json['id'] as String,
      status: (json['status'] as num).toInt(),
      date: json['date'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$BookingRequestImplToJson(
        _$BookingRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'date': instance.date,
      'type': instance.type,
    };
