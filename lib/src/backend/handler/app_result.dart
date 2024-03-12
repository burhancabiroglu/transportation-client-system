import 'dart:async';

abstract class AppResult<T> {
  const AppResult();
  factory AppResult.success(T data) => SuccessResult(data: data);
  factory AppResult.error(String message) => ErrorResult(message: message);
}

class SuccessResult<T> extends AppResult<T> {
  final T data;
  SuccessResult({required this.data});
}

class ErrorResult<T> extends AppResult<T> {
  final String message;
  ErrorResult({required this.message});
}

extension AppResultGetter<T> on FutureOr<AppResult<T>> {
  FutureOr<AppResult<T>> successListener(void Function(T value) listener) async { 
    final result = await this;
    if(result is SuccessResult){
      listener((result as SuccessResult<T>).data);
    }
    return this;
  }

  FutureOr<AppResult<T>> errorListener(void Function(T value) listener) async { 
    final result = await this;
    if(result is ErrorResult){
      listener((result as SuccessResult<T>).data);
    }
    return this;
  }
}