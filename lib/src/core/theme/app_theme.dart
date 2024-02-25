import 'package:babiconsultancy/src/core/base/app_theme.dart';
import 'package:babiconsultancy/src/core/theme/app_color_scheme.dart';
import 'package:babiconsultancy/src/core/theme/app_text_style.dart';

class BabiAppTheme extends CoreTheme {
  const BabiAppTheme();
  
  @override
  final CoreColorScheme colorScheme = const BabiAppColorScheme();

  @override
  final CoreTextStyle textStyle = const BabiAppTextStyle();
}