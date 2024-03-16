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
    LocalizationKeys.Home_Transfer_Requests: "Transferler Taleplerim",


    LocalizationKeys.Transfer_Request_Title: "Transfer Talebi",
    LocalizationKeys.Transfer_Title: "Transferler",

    LocalizationKeys.Airport_Transfer_Title: "Havaliman\u0131 Transferleri",
    LocalizationKeys.Airport_Transfer_Nav_Title: "Havaliman\u0131",

    LocalizationKeys.About_Us_Title: "Hakk\u0131m\u0131zda",


    LocalizationKeys.Transfer_Request_Button: "Transfer Talep Et",
    LocalizationKeys.Transfer_Not_Found: "Transfer Bulunamad\u0131",
    LocalizationKeys.More: "Daha fazla",

    LocalizationKeys.Profile_Title: "Profilim",
    LocalizationKeys.Profile_Settings: "Profil ayarları",
    LocalizationKeys.Profile_Greetings: "Merhaba",
    LocalizationKeys.Profile_Support: "Destek",
    LocalizationKeys.Profile_Logout: "Çıkış yap",
    LocalizationKeys.Profile_Change_Password: "Parola değiştir",

    
    LocalizationKeys.Transfer_Request_Selected: "Seçildi",
    LocalizationKeys.Transfer_Request_UnSelectable: "Seçilemez",
    LocalizationKeys.Transfer_Request_Selectable: "Seçilebilir",
    LocalizationKeys.Transfer_Request_Choose_Seat: "Koltuk Seç",
    
    LocalizationKeys.Status_Accepted: "Kabul Edildi",
    LocalizationKeys.Status_Declined: "Reddedildi",
    LocalizationKeys.Status_Done: "Geçmiş",
    LocalizationKeys.Status_Pending: "Bekleniyor",

    LocalizationKeys.About_Us_Text: "Türkiye'nin en prestijli ve en yenilikçi yurt dışı eğitimi danışmanlık firmaları arasında yer alan Babi Eğitim Koçluğu firmamız aracılığı ile; yurt dışında kaliteli bir eğitim almak isteyen öğrencilere, kariyer hedeflerine uygun profesyonel bir danışmanlık hizmeti sunmaktayız.",

  };
}