import 'dart:async';

abstract class AppResult<T> {
  const AppResult();
  const factory AppResult.success({required T data}) = SuccessResult;
  const factory AppResult.error({
    required String message,
    required String error,
    required int statusCode,
  }) =  ErrorResult;
}

class SuccessResult<T> extends AppResult<T> {
  final T data;
  const SuccessResult({required this.data});
}

class ErrorResult<T> extends AppResult<T> {
  final String message;
  final String error;
  final int statusCode;
  const ErrorResult({
    required this.message,
    required this.error,
    required this.statusCode,
  });
}

extension AppResultGetter<T> on FutureOr<AppResult<T>> {
  FutureOr<AppResult<T>> successListener(void Function(T data) listener) async { 
    final result = await this;
    if(result is SuccessResult){
      listener((result as SuccessResult<T>).data);
    }
    return this;
  }

  FutureOr<AppResult<T>> errorListener(void Function(ErrorResult<T> error) listener) async { 
    final result = await this;
    if(result is ErrorResult){
      listener((result as ErrorResult<T>));
    }
    return this;
  }

  FutureOr<AppResult<T>> completeListener(void Function(AppResult<T> result) listener) async { 
    final result = await this;
    listener(result);
    return this;
  }
}