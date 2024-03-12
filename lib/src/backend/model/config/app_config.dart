class AppConfig {
  final String appVersion;
  final int appCode;
  final String aboutUsLink;

  AppConfig({
    required this.appVersion,
    required this.appCode,
    required this.aboutUsLink,
  });


  AppConfig.fromJson(Map<String, dynamic> json): this(
    appVersion: json['app_version'] as String,
    appCode: json['app_code'] as int,
    aboutUsLink: json['about_us_link'] as String,
  );

  Map<String, dynamic> toJson() => {
    "app_version": appVersion,
    "app_code": appCode,
    "about_us_link": aboutUsLink,
  };
}