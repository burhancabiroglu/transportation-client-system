import 'package:babiconsultancy/src/backend/model/user/user.dart';

sealed class SessionState {
  const SessionState();

  const factory SessionState.unauthorized() = Unauthorized;
  const factory SessionState.authorized({
    required String accessToken, 
    required User user, 
  }) = Authorized;
}

class Unauthorized extends SessionState {
  const Unauthorized();
}


class Authorized extends SessionState {
  final String accessToken;
  final User user;

  const Authorized({ required this.accessToken, required this.user});
}