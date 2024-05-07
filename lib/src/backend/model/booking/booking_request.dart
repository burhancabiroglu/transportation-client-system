import 'package:freezed_annotation/freezed_annotation.dart';
part "../../../../generated/model/booking/booking_request.freezed.dart";
part "../../../../generated/model/booking/booking_request.g.dart";

@freezed
class BookingRequest with _$BookingRequest {
  const factory BookingRequest({
    required String id,
    required int status,
    required String date,
    required String type,
  }) = _BookingRequest;

  factory BookingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestFromJson(json);
}
