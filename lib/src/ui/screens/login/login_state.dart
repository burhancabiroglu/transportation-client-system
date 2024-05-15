sealed class LoginState {
  final String? message;
  const LoginState({this.message});

  const factory LoginState.success({String? message}) = LoginStateSuccess;
  const factory LoginState.error({String? message}) = LoginStateError;
  static LoginState get none => const LoginStateNone();

}

class LoginStateNone extends LoginState {
  const LoginStateNone();
}

class LoginStateSuccess extends LoginState {
  const LoginStateSuccess({super.message});
}

class LoginStateError extends LoginState {
  const LoginStateError({super.message});
}
