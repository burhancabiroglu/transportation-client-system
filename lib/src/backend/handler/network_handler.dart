import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:dio/dio.dart';
import 'app_result.dart';

abstract class NetworkHandler {
  const NetworkHandler();

  static Future<AppResult<T>> getSafeResult<T>(Future<BaseResponse<T>> Function() call) async {
    try {
      final response = await call();
      return AppResult.success(response.data);
    } catch (e) {
      if (e is DioException) {
        switch (e.type) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.cancel:
          case DioExceptionType.receiveTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.unknown:
            logger.e("${e.type} -> Poor Network");
            return AppResult.error(
              e.response?.statusCode?? 400,
               e.response?.statusMessage ?? ""
            );
          case DioExceptionType.badResponse:
            logger.e("${e.type} ${e.response.toString()}");
            return AppResult.error(
              e.response?.statusCode?? 400,
               e.response?.statusMessage ?? ""
            );
          default:
            return AppResult.error(
              e.response?.statusCode?? 400,
              e.response?.statusMessage ?? ""
            );
        }
      }
      logger.e("Api error message -> ${e.toString()}");
      return AppResult.error(
        500,
        e.toString()
      );
    }
  }
}