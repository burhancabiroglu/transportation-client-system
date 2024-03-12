// ignore_for_file: constant_identifier_names
import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:babiconsultancy/src/backend/repo/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SplashCubit extends Cubit<SplashState> {
  final ConfigRepo configRepo;
  final LocalStorage storage;
  SplashCubit({
    required this.configRepo,
    required this.storage
  }): super(SplashState.LOADING) {
    init();
  }

  void init() async {
    if(!(await InternetConnectionChecker().hasConnection)){
      emit(SplashState.NETWORK_NOT_FOUND);
      return;
    }
    configRepo.getAppConfig()
      .successListener((value) => storage.appConfig = value); 


    emit(SplashState.DONE);
  }
}

enum SplashState {
  NETWORK_NOT_FOUND,
  ERROR,
  LOADING,
  DONE;
}