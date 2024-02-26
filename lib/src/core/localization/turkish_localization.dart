import 'package:babiconsultancy/src/core/base/core_localization.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

class TurkishLocalization extends CoreLocalization {
  const TurkishLocalization();

  @override
  final String code = "TR";

  @override
  Map<String, String> get map => {
    LocalizationKeys.Splash_Description: "Babi\nEğitim Koçluğu\nYurt D\u0131ş\u0131 Dan\u0131şmanl\u0131k",
    LocalizationKeys.Home_Title: "Ana Sayfa",
    LocalizationKeys.Transfer_Request_Title: "Transfer Talebi",
    LocalizationKeys.Airport_Transfer_Title: "Havaliman\u0131\nTransferleri",
    LocalizationKeys.About_Us_Title: "Hakk\u0131m\u0131zda"
  };
}