import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';
import 'package:babiconsultancy/src/core/localization/localization_manager.dart';
import 'package:babiconsultancy/src/ui/routes/core_router.dart';
import 'package:babiconsultancy/src/ui/screens/profile/info/profile_info_screen.dart';
import 'package:babiconsultancy/src/ui/screens/profile/profile_state.dart';
import 'package:babiconsultancy/src/ui/widgets/textfields/immutable_text_field_data.dart';
import 'package:babiconsultancy/src/backend/model/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AuthRepo repo;
  ProfileCubit({ required this.repo })
    : super(ProfileStateNone()) { getInformations(); }

  void getInformations() {
    repo.profile()
      .successListener((data) {
        emit(ProfileStateSuccess(info: data));
      })
      .errorListener((error) {
        emit(const ProfileStateError());
      });
  }

  void routeToProfileInfo() {
    final localization = LocalizationManager();
    final rawDate = DateTime.fromMicrosecondsSinceEpoch(int.parse(state.info?.createdAt?? "0") * 1000);
    final date = DateFormat.yMMMMd(localization.currentCode).format(rawDate);
    final dataList = [
      ImmutableTextFieldData(
        label: localization.of(LocalizationKeys.Form_FullName), 
        text: state.info?.fullname ?? ""
      ),
      ImmutableTextFieldData(
        label: localization.of(LocalizationKeys.Form_Email),
        text: state.info?.email ?? ""
      ),
      ImmutableTextFieldData(
        label: localization.of(LocalizationKeys.Form_CreatedAt), 
        text: date,
      )
    ];
    CoreRouter.main.pushNamed(
      ProfileInfoScreen.route,
      arguments: { ProfileInfoScreen.argsKey : dataList }
    );
  }
}