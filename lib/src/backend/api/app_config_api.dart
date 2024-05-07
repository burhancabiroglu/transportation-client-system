import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/app_config_api.g.dart";

@RestApi(baseUrl: NetworkOptions.APP_CONFIG_URL)
abstract class AppConfigApi {
  factory AppConfigApi(Dio dio, {String baseUrl}) = _AppConfigApi;


}