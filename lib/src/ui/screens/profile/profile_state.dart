import 'package:babiconsultancy/src/backend/model/user/user.dart';

sealed class ProfileState {
  final User? info;
  const ProfileState({this.info});
}

class ProfileStateNone extends ProfileState {}

class ProfileStateSuccess extends ProfileState {
  const ProfileStateSuccess({ super.info });
}

class ProfileStateError extends ProfileState {
  final String? message;
  const ProfileStateError({ this.message });
}