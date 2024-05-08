// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestImpl _$$BookingRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookingRequestImpl(
      json['user_id'] as String,
      (json['additional_note'] as num).toInt(),
      json['transfer_type'] as String,
    );

Map<String, dynamic> _$$BookingRequestImplToJson(
        _$BookingRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'additional_note': instance.additionalNote,
      'transfer_type': instance.transferType,
    };
