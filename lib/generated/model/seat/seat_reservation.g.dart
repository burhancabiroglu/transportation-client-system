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
      seatStatus: json['seatStatus'] as String,
      userId: json['userId'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      transferStatus: json['transferStatus'] as String,
      transferType: json['transferType'] as String,
      plannedAt: json['plannedAt'] as String,
    );

Map<String, dynamic> _$$SeatReservationImplToJson(
        _$SeatReservationImpl instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'transferId': instance.transferId,
      'seatStatus': instance.seatStatus,
      'userId': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'transferStatus': instance.transferStatus,
      'transferType': instance.transferType,
      'plannedAt': instance.plannedAt,
    };
