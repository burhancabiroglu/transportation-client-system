import 'package:babiconsultancy/src/core/base/app_localization.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

class TurkishLocalization extends CoreLocalization {
  const TurkishLocalization();

  @override
  final String code = "TR";

  @override
  Map<String, String> get map => {
    LocalizationKeys.Splash_Description: "Babi\nğitim Koçluğu\nYurt Dışı Danışmanlık",
    LocalizationKeys.Home_Title: "Ana Sayfa",
    LocalizationKeys.Transfer_Request_Title: "Transfer Talebi",
    LocalizationKeys.Airport_Transfer_Title: "Havalimanı Transferleri",
    LocalizationKeys.About_Us_Title: "Hakkımızda"
  };
}