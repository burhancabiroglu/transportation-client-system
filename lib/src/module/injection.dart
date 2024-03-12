import 'package:babiconsultancy/src/backend/repo/config_repo.dart';
import 'package:babiconsultancy/src/module/firebase_module.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future setup() async {
  await FirebaseModule.init();
  injector.registerSingleton(FirebaseModule.database);
  injector.registerLazySingleton<ConfigRepo>(() => ConfigRepoImpl(database: injector.get()));
}