import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepo repo;
  ProfileCubit({ required this.repo }): super(ProfileStateNone());

  void getInformations() {
    repo.profile()
      .successListener((data) {
        emit(ProfileStateSuccess(info: data));
      })
      .errorListener((error) {
        emit(const ProfileStateError());
      });
  }
}