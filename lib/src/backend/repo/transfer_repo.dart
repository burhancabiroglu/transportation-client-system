import 'package:babiconsultancy/src/backend/api/transfer_api.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_dto.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_reservation.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_dto.dart';

abstract class TransferRepo {
  final TransferApi api;
  const TransferRepo({required this.api});

	Future<AppResult<List<SeatDto>>> getSeatsByTransferId(String transferId);
	Future<AppResult<List<TransferDto>>> getTransfersByType(String type);
	Future<AppResult<List<TransferDto>>> getTransfersByStatus(String status);
  Future<AppResult<List<TransferDto>>> getTransfersByQuery(String status, String type);
  Future<AppResult<List<SeatReservation>>> getSeatReservations();
  Future<AppResult<String>> reserveSeat(String seatId);
}

class TransferRepoImpl extends TransferRepo {
  const TransferRepoImpl({required super.api});
  
  @override
  Future<AppResult<List<SeatDto>>> getSeatsByTransferId(String transferId) {
    return NetworkHandler.getSafeResult(() => api.getSeatsByTransferId(transferId));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByStatus(String status) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByStatus(status));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByType(String type) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByType(type));
  }
  
  @override
  Future<AppResult<List<TransferDto>>> getTransfersByQuery(String status, String type) {
    return NetworkHandler.getSafeResult(() => api.getTransfersByQuery(status, type));
  }
  
  @override
  Future<AppResult<List<SeatReservation>>> getSeatReservations() {
    return NetworkHandler.getSafeResult(() => api.getSeatReservations());
  }
  
  @override
  Future<AppResult<String>> reserveSeat(String seatId) {
   return NetworkHandler.getSafeResult(() => api.reserveSeat(seatId));
  }
}