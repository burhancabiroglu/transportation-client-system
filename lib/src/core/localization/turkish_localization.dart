import 'package:babiconsultancy/src/core/base/core_localization.dart';
import 'package:babiconsultancy/src/core/localization/localization_keys.dart';

class TurkishLocalization extends CoreLocalization {
  const TurkishLocalization();

  @override
  final String code = "tr";

  @override
  Map<String, String> get map => {
    "Okay": "Tamam",
    "Yes": "Evet",
    "No": "Hay\u0131r",
    "Logout.Dialog": "Ç\u0131k\u0131ş yapmak istediğinize emin misiniz?",

    "Splash.Description": "Babi\nEğitim Koçluğu\nYurt D\u0131ş\u0131 Dan\u0131şmanl\u0131k",
    "Home.Title": "Ana Sayfa",
    "Home.Transfers": "Transferlerim",
    "Home.TransferRequests": "Transferler Taleplerim",


    "TransferRequest.Title": "Transfer Talebi",
    "TransferRequest.Send": "Talebi Gönder",

    "Transfer.Title": "Transferler",

    "AirportTransfer.Title": "Havaliman\u0131 Transferleri",
    "AirportTransfer.Nav.Title": "Havaliman\u0131",

    "AboutUs.Title" : "Hakk\u0131m\u0131zda",


    "TransferRequest.Button" : "Transfer Talep Et",
    "Transfer.NotFound": "Transfer Bulunamad\u0131",
    "More": "Daha fazla",

    "Profile.Title": "Profilim",
    "Profile.Settings": "Profil ayarlar\u0131",
    "Profile.Info": "Profil Bilgilerim",
    "Profile.Greetings": "Merhaba",
    "Profile.Support" : "Destek",
    "Profile.Logout": "Ç\u0131k\u0131ş yap",
    "Profile.ChangePassword": "Parola değiştir",
    "Profile.App.Info": "Uygulama Hakk\u0131nda",

    
    "TransferRequest.Selected" : "Seçildi",
    "TransferRequest.UnSelectable" : "Seçilemez",
    "TransferRequest.Selectable" : "Seçilebilir",
    "TransferRequest.Choose_Seat" : "Koltuk Seç",
    
    LocalizationKeys.Status_Accepted: "Kabul Edildi",
    LocalizationKeys.Status_Declined: "Reddedildi",
    LocalizationKeys.Status_Done: "Geçmiş",
    LocalizationKeys.Status_Pending: "Bekleniyor",

    "AboutUs.Text": "Türkiye'nin en prestijli ve en yenilikçi yurt d\u0131ş\u0131 eğitimi dan\u0131şmanl\u0131k firmalar\u0131 aras\u0131nda yer alan Babi Eğitim Koçluğu firmam\u0131z arac\u0131l\u0131ğ\u0131 ile; yurt d\u0131ş\u0131nda kaliteli bir eğitim almak isteyen öğrencilere, kariyer hedeflerine uygun profesyonel bir dan\u0131şmanl\u0131k hizmeti sunmaktay\u0131z.",

    "auth_error.wrong_credentials": "Yanl\u0131ş kullan\u0131c\u0131 ad\u0131 veya şifre.",
    "auth_error.record_not_found": "Kay\u0131t bulunamad\u0131.",
    "auth_error.user_not_confirmed": "Kullan\u0131c\u0131 hesab\u0131 doğrulanmam\u0131ş.",
    "auth_error.email_already_used": "E-posta adresi zaten kullan\u0131l\u0131yor.",
    "auth_error.weak_password": "Zay\u0131f parola hatas\u0131",


    "register.successful.title": "Kay\u0131t Başar\u0131l\u0131",
    "register.successful.description": "Hesab\u0131n\u0131z başar\u0131yla kaydedildi. Ancak, hesab\u0131n\u0131z\u0131n tam olarak etkinleştirilmesi için yönetici onay\u0131 gerekmektedir.\n\nYönetici onay\u0131n\u0131n ard\u0131ndan uygulamam\u0131za tam erişim elde edebileceksiniz. \n\nLütfen bekleyiniz.",
    "user.confirmation.info.title": "Hesab\u0131n\u0131z Onay Aşamas\u0131nda",
    "user.confirmation.info.description": "Hesab\u0131n\u0131z\u0131 tam olarak etkinleştirmek için Onay Aşamas\u0131'na geçtik. Hesab\u0131n\u0131z\u0131 kullanabilmeniz için yönetici onay\u0131 gerekmektedir. Lütfen sabr\u0131n\u0131z\u0131 gösterin, talebiniz en k\u0131sa sürede incelenecek ve onaylanacakt\u0131r. Teşekkürler!",


    "Form.Login" : "Giriş Yap",
    "Form.Login.Description": "Zaten üye misin?",  
    "Form.Register" : "Üye Ol",
    "Form.Register.Description": "Ya da üye değilsen",
    "Form.Email" : "E-posta adresiniz",
    "Form.Password" : "Şifreniz",
    "Form.FullName" : "İsim Soyisim",
    "Form.ForgotPassword" : "Şifremi Unuttum",
    "Form.CreatedAt": "Üyelik Tarihi",

    "Error.Email.Required": "E-posta adresi boş olamaz",
    "Error.Email.Format": "Geçerli bir e-posta adresi giriniz",
    "Error.Password.Required": "Şifre boş olamaz",
    "Error.FullName.Required": "İsim Soyisim boş olamaz",

    "Error.Password.Decimal": "En az bir rakam içermeli",
    "Error.Password.Uppercase": "En az bir büyük harf içermeli",
    "Error.Password.Length":"Minimum 6 karakterden oluşmal\u0131",
    
  };
}
