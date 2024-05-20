import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/config/app_config.freezed.dart';
part '../../../../generated/model/config/app_config.g.dart';

@freezed
class AppConfig with _$AppConfig{
 const factory AppConfig({
    @JsonKey(name: 'app_version')
    required String appVersion,
    @JsonKey(name: 'app_code')
    required int appCode,
    @JsonKey(name: 'about_us_link')
    required String aboutUsLink,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);
}