import 'package:babiconsultancy/src/core/base/core_localization.dart';

class Language extends CoreLocalization {
  @override
  final String code;

  @override
  final Map<String, String> map;
  
  const Language({
    required this.code,
    required this.map,
  });
  
  Language.fromJson(Map<String, dynamic> json): this(
      code: json['code'] as String,
      map: json['map'] as Map<String,String>
  );
}