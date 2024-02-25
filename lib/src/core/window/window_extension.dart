import 'package:babiconsultancy/src/core/window/window_size.dart';

extension SizeExtension on num {
  double get w => WindowSize.instance.width / 500 * this;
  double get h => WindowSize.instance.height / 1000 * this;
}
