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
    LocalizationKeys.Home_Transfers: "Transferlerim",

    LocalizationKeys.Transfer_Request_Title: "Transfer Talebi",
    LocalizationKeys.Transfer_Title: "Transferler",

    LocalizationKeys.Airport_Transfer_Title: "Havaliman\u0131 Transferleri",
    LocalizationKeys.Airport_Transfer_Nav_Title: "Havaliman\u0131",

    LocalizationKeys.About_Us_Title: "Hakk\u0131m\u0131zda",


    LocalizationKeys.Transfer_Request_Button: "Transfer Talep Et",
    LocalizationKeys.Transfer_Not_Found: "Transfer Bulunamad\u0131",
    LocalizationKeys.More: "Daha fazla",
    LocalizationKeys.Profile_Title: "Profilim",
    LocalizationKeys.Transfer_Request_Selected: "Seçildi",
    LocalizationKeys.Transfer_Request_UnSelectable: "Seçilemez",
    LocalizationKeys.Transfer_Request_Selectable: "Seçilebilir",
    LocalizationKeys.Transfer_Request_Choose_Seat: "Koltuk Seç"
  };
}