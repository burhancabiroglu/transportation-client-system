import 'package:babiconsultancy/src/backend/api/app_config_api.dart';
import 'package:babiconsultancy/src/backend/api/auth_api.dart';
import 'package:babiconsultancy/src/backend/api/transfer_api.dart';
import 'package:babiconsultancy/src/backend/api/transfer_wish_api.dart';
import 'package:babiconsultancy/src/backend/handler/core_client.dart';
import 'package:babiconsultancy/src/backend/repo/auth_repo.dart';
import 'package:babiconsultancy/src/backend/repo/shared_pref.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injector = GetIt.instance;

Future setup() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  injector.registerSingleton(LocalStorage.initAsync(sharedPrefs));
  injector.registerSingleton(CoreClient());
  injector.registerSingleton(AuthApi(injector<CoreClient>()));
  injector.registerSingleton(TransferApi(injector<CoreClient>()));
  injector.registerSingleton(TransferWishApi(injector<CoreClient>()));
  injector.registerSingleton(AppConfigApi(injector<CoreClient>()));
  injector.registerSingleton<AuthRepo>(AuthRepoImpl(api: injector<AuthApi>()));
}