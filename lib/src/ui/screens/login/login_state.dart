sealed class LoginState {
  final String? message;
  const LoginState({this.message});

  const factory LoginState.success({String? message}) = _Success;
  const factory LoginState.error({String? message}) = _Error;
  static LoginState get none => const _None();

}

class _None extends LoginState {
  const _None();
}

class _Success extends LoginState {
  const _Success({super.message});
}

class _Error extends LoginState {
  const _Error({super.message});
}
