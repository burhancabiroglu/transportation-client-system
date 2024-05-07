import 'package:babiconsultancy/src/backend/model/login/login_request.dart';
import 'package:babiconsultancy/src/backend/model/login/login_response.dart';
import 'package:babiconsultancy/src/backend/model/register/register_request.dart';
import 'package:babiconsultancy/src/backend/model/response/base_response.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:babiconsultancy/src/core/config/network_options.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part "../../../generated/api/auth_api.g.dart";

@RestApi(baseUrl: NetworkOptions.AUTH_URL)
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST("login")
  Future<BaseResponse<LoginResponse>> login(@Body() LoginRequest body);

  @POST("register")
  Future<BaseResponse<String>> register(@Body() RegisterRequest body);

  @GET("profile")
  Future<BaseResponse<User>> profile();
}