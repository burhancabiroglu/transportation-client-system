// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/seat/seat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatDtoImpl _$$SeatDtoImplFromJson(Map<String, dynamic> json) =>
    _$SeatDtoImpl(
      seatId: json['seatId'] as String,
      transferId: json['transferId'] as String,
      status: (json['status'] as num).toInt(),
      userId: json['userId'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      informationGiven: json['informationGiven'] as bool,
    );

Map<String, dynamic> _$$SeatDtoImplToJson(_$SeatDtoImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'transferId': instance.transferId,
      'status': instance.status,
      'userId': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'informationGiven': instance.informationGiven,
    };
