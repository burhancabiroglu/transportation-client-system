import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/transfer_wish_api.g.dart";

@RestApi(baseUrl: NetworkOptions.TRANSFER_WISH_URL)
abstract class TransferWishApi {
  factory TransferWishApi(Dio dio, {String baseUrl}) = _TransferWishApi;


}