import 'package:babiconsultancy/src/backend/repo/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final LocalStorage storage;
  SplashCubit({
    required this.storage
  }): super(SplashState.LOADING) {
    init();
  }

  void init() async {
    if(!(await InternetConnectionChecker().hasConnection)){
      emit(SplashState.NETWORK_NOT_FOUND);
      return;
    }
    emit(SplashState.DONE);
  }
}