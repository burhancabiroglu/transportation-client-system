import 'package:babiconsultancy/src/backend/api/transfer_api.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_reservation.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_dto.dart';

abstract class TransferRepo {
  final TransferApi api;
  const TransferRepo({required this.api});

	Future<AppResult<String>> updateSeat(String seatId, int status);
	Future<AppResult<List<SeatDto>>> getSeatsByTransferId(String transferId);
	Future<AppResult<List<TransferDto>>> getTransfersByType(int type);
	Future<AppResult<List<TransferDto>>> getTransfersByStatus(int status);
  Future<AppResult<List<TransferDto>>> getTransfersByQuery(int status, int type);
  Future<AppResult<List<SeatReservation>>> getSeatReservations();
}

class TransferRepoImpl extends TransferRepo {
  const TransferRepoImpl({required super.api});
  
  @override
  Future<AppResult<List<SeatDto>>> getSeatsByTransferId(String transferId) {
    return NetworkHandler.getSafeResult(() => api.getSeatsByTransferId(transferId));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByStatus(int status) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByStatus(status));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByType(int type) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByType(type));
  }
  
  @override
  Future<AppResult<String>> updateSeat(String seatId, int status) {
    return NetworkHandler.getSafeResult(() => api.updateSeat(seatId, status));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByQuery(int status, int type) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByQuery(status, type));
  }
  
  @override
  Future<AppResult<List<SeatReservation>>> getSeatReservations() {
    return NetworkHandler.getSafeResult(() => api.getSeatReservations());
  }

}