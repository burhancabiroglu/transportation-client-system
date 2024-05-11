import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final ConfigRepo configRepo;
  SplashCubit({
    required this.configRepo
  }): super(SplashState.LOADING) {
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
    emit(SplashState.DONE);
  }
}