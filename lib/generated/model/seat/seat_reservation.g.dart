// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/seat/seat_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatReservationImpl _$$SeatReservationImplFromJson(
        Map<String, dynamic> json) =>
    _$SeatReservationImpl(
      seatId: json['seatId'] as String,
      transferId: json['transferId'] as String,
      status: (json['status'] as num).toInt(),
      userId: json['userId'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      transferStatus: (json['transferStatus'] as num).toInt(),
      transferType: (json['transferType'] as num).toInt(),
      plannedAt: json['plannedAt'] as String,
    );

Map<String, dynamic> _$$SeatReservationImplToJson(
        _$SeatReservationImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'transferId': instance.transferId,
      'status': instance.status,
      'userId': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'transferStatus': instance.transferStatus,
      'transferType': instance.transferType,
      'plannedAt': instance.plannedAt,
    };
