// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part "../../../../generated/model/booking/booking_request.freezed.dart";
part "../../../../generated/model/booking/booking_request.g.dart";

@freezed
class BookingRequest with _$BookingRequest {
  const factory BookingRequest(
    @JsonKey(name: "user_id")
    String userId,
    @JsonKey(name: "additional_note")
    int additionalNote,
    @JsonKey(name: "transfer_type")
    String transferType,
  ) = _BookingRequest;

  factory BookingRequest.fromJson(Map<String, dynamic> json) =>
      _$BookingRequestFromJson(json);
}
