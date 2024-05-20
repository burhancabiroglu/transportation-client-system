// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../src/backend/model/seat/seat_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatReservationImpl _$$SeatReservationImplFromJson(
        Map<String, dynamic> json) =>
    _$SeatReservationImpl(
      seatId: json['seat_id'] as String,
      transferId: json['transfer_id'] as String,
      status: (json['status'] as num).toInt(),
      userId: json['user_id'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      transferStatus: (json['transfer_status'] as num).toInt(),
      transferType: (json['transfer_type'] as num).toInt(),
      plannedAt: json['planned_at'] as String,
    );

Map<String, dynamic> _$$SeatReservationImplToJson(
        _$SeatReservationImpl instance) =>
    <String, dynamic>{
      'seat_id': instance.seatId,
      'transfer_id': instance.transferId,
      'status': instance.status,
      'user_id': instance.userId,
      'fullname': instance.fullname,
      'email': instance.email,
      'transfer_status': instance.transferStatus,
      'transfer_type': instance.transferType,
      'planned_at': instance.plannedAt,
    };
