import 'package:babiconsultancy/src/backend/api/auth_api.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/model/login/login_request.dart';
import 'package:babiconsultancy/src/backend/model/login/login_response.dart';
import 'package:babiconsultancy/src/backend/model/register/register_request.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';

abstract class AuthRepo {
  final AuthApi api;
  const AuthRepo({required this.api});

  Future<AppResult<LoginResponse>> login(LoginRequest body);
  Future<AppResult<String>> register(RegisterRequest body);
  Future<AppResult<User>> profile();
}

class AuthRepoImpl extends AuthRepo {
  const AuthRepoImpl({required super.api});
  
  @override
  Future<AppResult<LoginResponse>> login(LoginRequest body) {
    return NetworkHandler.getSafeResult(() => api.login(body));
  }
  
  @override
  Future<AppResult<User>> profile() {
    return NetworkHandler.getSafeResult(() => api.profile());
  }
  
  @override
  Future<AppResult<String>> register(RegisterRequest body) {
    return NetworkHandler.getSafeResult(() => api.register(body));
  }
}