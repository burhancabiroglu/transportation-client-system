import 'package:babiconsultancy/src/backend/handler/firestore_handler.dart';
import 'package:babiconsultancy/src/backend/model/config/app_config.dart';
import 'package:babiconsultancy/src/backend/model/language/language.dart';
import 'package:babiconsultancy/src/backend/handler/app_result.dart';
import 'package:cloud_firestore/cloud_firestore.dart' show FirebaseFirestore;

abstract class ConfigRepo {
  final FirebaseFirestore database;
  const ConfigRepo({required this.database});
  Future<AppResult<AppConfig>> getAppConfig();
  Future<AppResult<Language>> getLanguage({String code = "tr"});
}

class ConfigRepoImpl extends ConfigRepo {

  ConfigRepoImpl({required super.database});

  @override
  Future<AppResult<AppConfig>> getAppConfig() => 
    database.exec(
      collection: "CONFIG",
      doc: "APP_CONFIG",
      mapper: AppConfig.fromJson
    );
  
  
  @override
  Future<AppResult<Language>> getLanguage({String code = "tr"}) => 
    database.exec(
      collection: "LANGUAGE",
      doc: code,
      mapper: Language.fromJson
    );
  
}