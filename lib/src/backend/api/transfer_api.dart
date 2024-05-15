import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_dto.dart';
import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/transfer_api.g.dart";

@RestApi(baseUrl: NetworkOptions.TRANSFERS_URL)
abstract class TransferApi {
  factory TransferApi(Dio dio, {String baseUrl}) = _TransferApi;

	@PUT("updateSeat")
	Future<BaseResponse<String>> updateSeat(@Query("seatId") String seatId, @Query("status") int status);

	@GET("seats/{id}")
	Future<BaseResponse<List<SeatDto>>> getSeatsByTransferId(@Path("id") String transferId);


	@GET("type/{type}")
	Future<BaseResponse<List<TransferDto>>> getTransfersByType(@Path("type") int type);

	@GET("status/:status")
	Future<BaseResponse<List<TransferDto>>> getTransfersByStatus(@Path("status") int status);

	@GET("")
  Future<BaseResponse<List<TransferDto>>> getTransfersByQuery(@Query("status") int status, @Query("type") int type);
}