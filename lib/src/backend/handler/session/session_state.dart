sealed class SessionState {
  const SessionState();

  const factory SessionState.unauthorized() = Unauthorized;
  const factory SessionState.authorized({
    required String accessToken, 
  }) = Authorized;
}

class Unauthorized extends SessionState {
  const Unauthorized();
}


class Authorized extends SessionState {
  final String accessToken;

  const Authorized({ required this.accessToken });
}