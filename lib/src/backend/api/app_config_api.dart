import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';
import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/app_config_api.g.dart";

@RestApi(baseUrl: NetworkOptions.APP_CONFIG_URL)
abstract class AppConfigApi {
  factory AppConfigApi(Dio dio, {String baseUrl}) = _AppConfigApi;

  @GET("seatStatuses")
  Future<BaseResponse<List<SeatStatus>>> getSeatStatuses();

  @GET("transferStatuses")
  Future<BaseResponse<List<TransferStatus>>> getTransferStatuses();

  @GET("transferTypes")
  Future<BaseResponse<List<TransferType>>> getTransferTypes();
}