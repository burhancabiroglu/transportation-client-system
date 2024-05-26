// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/booking/booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingRequestImpl _$$BookingRequestImplFromJson(Map<String, dynamic> json) =>
    _$BookingRequestImpl(
      json['userId'] as String,
      json['additionalNote'] as String,
      json['transferType'] as String,
    );

Map<String, dynamic> _$$BookingRequestImplToJson(
        _$BookingRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'additionalNote': instance.additionalNote,
      'transferType': instance.transferType,
    };
