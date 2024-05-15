import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/handler/session/session_manager.dart';
import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final ConfigRepo configRepo;
  final SessionManager session;
  SplashCubit({
    required this.configRepo,
    required this.session
  }): super(SplashState.UNAUTHORIZED) {
    init();
  }

  void init() async {
    if(!(await InternetConnectionChecker().hasConnection)){
      emit(SplashState.NETWORK_NOT_FOUND);
      return;
    }
    await Future.wait([
      configRepo.getSeatStatuses(),
      configRepo.getTransferStatuses(),
      configRepo.getTransferTypes()
    ]);

    session.checkLoggedIn()
      .successListener((data) => emit(SplashState.USER_AUTHORIZED))
      .errorListener((data) => emit(SplashState.UNAUTHORIZED));
  }
}