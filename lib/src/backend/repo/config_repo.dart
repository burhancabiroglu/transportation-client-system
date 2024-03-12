import 'package:babiconsultancy/src/backend/model/config/app_config.dart';
import 'package:babiconsultancy/src/backend/model/language/language.dart';
import 'package:babiconsultancy/src/backend/result/app_result.dart';
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
  Future<AppResult<AppConfig>> getAppConfig() async {
    final collectionRef = database.collection("CONFIG");
    final documentRef = await collectionRef.doc("APP_CONFIG").get();
    if(documentRef.data() == null) return AppResult.error("document not found");
    return AppResult.success(AppConfig.fromJson(documentRef.data()!));
  }
  
  @override
  Future<AppResult<Language>> getLanguage({String code = "tr"}) async {
    final collectionRef = database.collection("LANGUAGE");
    final documentRef = await collectionRef.doc(code).get();
    if(documentRef.data() == null) return AppResult.error("document not found");
    return AppResult.success(Language.fromJson(documentRef.data()!));
  }
}