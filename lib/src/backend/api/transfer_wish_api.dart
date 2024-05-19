import 'package:babiconsultancy/src/backend/model/booking/booking_request.dart';
import 'package:babiconsultancy/src/backend/model/booking/transfer_wish_dto.dart';
import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:babiconsultancy/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/transfer_wish_api.g.dart";

@RestApi(baseUrl: NetworkOptions.TRANSFER_WISH_URL)
abstract class TransferWishApi {
  factory TransferWishApi(Dio dio, {String baseUrl}) = _TransferWishApi;

  @POST("")
  Future<BaseResponse<String>> createTransferWish(
    @Body() BookingRequest body,
  );

  @DELETE("{id}")
  Future<BaseResponse<String>> removeTransferWish(
    @Path("id") String id,
  );

  @GET("")
  Future<BaseResponse<List<TransferWishDto>>> getTransferWishesByUserId();
}