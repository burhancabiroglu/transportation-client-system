import 'package:babiconsultancy/src/backend/api/app_config_api.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/cache_handler.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/model/seat/seat_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_status.dart';
import 'package:babiconsultancy/src/backend/model/transfer/transfer_type.dart';

abstract class ConfigRepo {
  final AppConfigApi api;
  const ConfigRepo({required this.api});

  Future<AppResult<List<SeatStatus>>> getSeatStatuses();
  Future<AppResult<List<TransferStatus>>> getTransferStatuses();
  Future<AppResult<List<TransferType>>> getTransferTypes();
}

class ConfigRepoImpl extends ConfigRepo {
  final CacheHandler cacheManager;
  const ConfigRepoImpl({
    required super.api,
    required this.cacheManager,
  });
  
  @override
  Future<AppResult<List<SeatStatus>>> getSeatStatuses() {
    return cacheManager.getListFromCacheOrNetwork(
      cacheName: "SEAT_STATUS", 
      decoder: (obj) => obj.map((e) => SeatStatus.fromJson(e)).toList(),
      encoder: (data) => data.map<Map<String,dynamic>>((e) => e.toJson()).toList(),
      apiCall: () => NetworkHandler.getSafeResult(() => api.getSeatStatuses())
    );
  }
  
  @override
  Future<AppResult<List<TransferStatus>>> getTransferStatuses() {
    return cacheManager.getListFromCacheOrNetwork(
      cacheName: "TRANSFER_STATUS", 
      decoder: (obj) => obj.map((e) => TransferStatus.fromJson(e)).toList(),
      encoder: (data) => data.map<Map<String,dynamic>>((e) => e.toJson()).toList(),
      apiCall: () => NetworkHandler.getSafeResult(() => api.getTransferStatuses())
    );
  }
  
  @override
  Future<AppResult<List<TransferType>>> getTransferTypes() {
    return cacheManager.getListFromCacheOrNetwork(
      cacheName: "TRANSFER_TYPE", 
      decoder: (obj) => obj.map((e) => TransferType.fromJson(e)).toList(),
      encoder: (data) => data.map<Map<String,dynamic>>((e) => e.toJson()).toList(),
      apiCall: () => NetworkHandler.getSafeResult(() => api.getTransferTypes())
    );
  }
}