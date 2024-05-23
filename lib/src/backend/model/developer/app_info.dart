
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../generated/model/developer/app_info.freezed.dart';
part '../../../../generated/model/developer/app_info.g.dart';

@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    required String name, 
    required String version, 
    required String owner,
    required String supportMail,
    required String licence
  }) = _AppInfo;

   factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
}