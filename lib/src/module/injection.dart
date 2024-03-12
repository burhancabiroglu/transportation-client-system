import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:babiconsultancy/src/backend/repo/shared_pref.dart';
import 'package:babiconsultancy/src/backend/repo/user_repo.dart';
import 'package:babiconsultancy/src/module/firebase_module.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future setup() async {
  await FirebaseModule.init();
  final sharedPrefs = await SharedPreferences.getInstance();
  injector.registerSingleton(LocalStorage.initAsync(sharedPrefs));
  injector.registerSingleton(FirebaseModule.auth);
  injector.registerSingleton(FirebaseModule.database);
  injector.registerLazySingleton<ConfigRepo>(() => ConfigRepoImpl(database: injector.get()));
  injector.registerLazySingleton<UserRepo>(() => UserRepoImpl(database: injector.get(), auth: injector.get()));
}