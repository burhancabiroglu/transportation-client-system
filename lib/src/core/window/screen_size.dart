import 'dart:ui';

class WindowSize {
  static final WindowSize _singleton = WindowSize._internal();
  double height = 0;
  double width = 0;

  static WindowSize get instance => _singleton;

  static void init(Size size) {
    _singleton.height = size.height;
    _singleton.width = size.width;
  }

  static double adaptiveSizeCalculator({double? size}) {
    return ((WindowSize.instance.height / 13) / (WindowSize.instance.width / 6)) * (size ?? 0);
  }

  WindowSize._internal();
}
