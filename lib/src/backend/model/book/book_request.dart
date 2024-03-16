import 'package:freezed_annotation/freezed_annotation.dart';
part "../../../../generated/model/book/book_request.freezed.dart";
part "../../../../generated/model/book/book_request.g.dart";

@freezed
class BookRequest with _$BookRequest {
    const factory BookRequest({
      required String id,
      required int status,
      required String date,
      required String type,
    }) = _BookRequest;

     factory BookRequest.fromJson(Map<String, dynamic> json) => _$BookRequestFromJson(json);
}