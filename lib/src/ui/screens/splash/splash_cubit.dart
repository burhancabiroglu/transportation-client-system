// ignore_for_file: constant_identifier_names
import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:babiconsultancy/src/backend/result/app_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  final ConfigRepo configRepo;
  SplashCubit({required this.configRepo}): super(SplashState.LOADING) {
    configRepo.getAppConfig()
      .successListener((value) => emit(SplashState.DONE)); 
  }
}

enum SplashState {
  NETWORK_NOT_FOUND,
  ERROR,
  LOADING,
  DONE;
}