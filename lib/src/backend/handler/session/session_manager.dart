// ignore_for_file: constant_identifier_names

import 'package:babiconsultancy/src/backend/api/auth_api.dart';
import 'package:babiconsultancy/src/backend/api/shared_pref.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/core_client.dart';
import 'package:babiconsultancy/src/backend/handler/network_handler.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_state.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionManager extends Cubit<SessionState> {
  final LocalStorage storage;
  final AuthApi authApi;
  SessionManager({
    required this.storage,
    required this.authApi,
  }) : super(const SessionState.unauthorized());

  void login({required String accessToken}) {
    emit(SessionState.authorized(accessToken: accessToken));
    storage.setString(ACCESS_TOKEN_ID, accessToken);
    CoreClient.authorizationToken = accessToken;
  }

  void logout() {
    emit(const SessionState.unauthorized());
  }

  Future<AppResult<User>> checkLoggedIn() {
    final token = storage.getString(ACCESS_TOKEN_ID);
    if (token == null || token.isEmpty) {
      return Future.value(const AppResult.error(
          message: "Access Token is null",
          error: "access_token",
          statusCode: 500));
    }
    login(accessToken: token);
    return NetworkHandler.getSafeResult(() => authApi.profile());
  }

  static const ACCESS_TOKEN_ID = "ACCESS_TOKEN";
}
