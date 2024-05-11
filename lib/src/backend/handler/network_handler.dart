import 'package:babiconsultancy/main.dart';
import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:dio/dio.dart';
import 'app_result.dart';

abstract class NetworkHandler {
  const NetworkHandler();

  static Future<AppResult<T>> getSafeResult<T>(Future<BaseResponse<T>> Function() call) async {
    try {
      final response = await call();
      logger.e("Network Request Success: $response");
      return AppResult.success(data: response.data);
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
              statusCode:  e.response?.statusCode?? 400,
              error: e.response?.statusMessage ?? "",
              message: e.response?.data["message"] ?? ""
            );
          case DioExceptionType.badResponse:
            logger.e("${e.type} ${e.response.toString()}");
            return AppResult.error(
              statusCode:  e.response?.statusCode?? 400,
              error: e.response?.statusMessage ?? "",
              message: e.response?.data["message"] ?? ""
            );
          default:
            return AppResult.error(
              statusCode:  e.response?.statusCode?? 400,
              error: e.response?.statusMessage ?? "",
              message: e.response?.data["message"] ?? ""
            );
        }
      }
      logger.e("Api error message -> ${e.toString()}");
      return const AppResult.error(
        statusCode:  500,
        message: "Internal Error",
        error: "Internal Error"
      );
    }
  }
}