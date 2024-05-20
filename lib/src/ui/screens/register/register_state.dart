sealed class RegisterState {
  final String? message;
  const RegisterState({this.message});

  const factory RegisterState.success({String? message}) = RegisterStateSuccess;
  const factory RegisterState.error({String? message}) = RegisterStateError;
  static RegisterState get none => const RegisterStateNone();
}

class RegisterStateNone extends RegisterState {
  const RegisterStateNone();
}

class RegisterStateSuccess extends RegisterState {
  const RegisterStateSuccess({super.message});
}

class RegisterStateError extends RegisterState {
  const RegisterStateError({super.message});
}
