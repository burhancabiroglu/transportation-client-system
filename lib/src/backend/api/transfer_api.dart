import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/transfer_api.g.dart";

@RestApi(baseUrl: NetworkOptions.TRANSFERS_URL)
abstract class TransferApi {
  factory TransferApi(Dio dio, {String baseUrl}) = _TransferApi;


}