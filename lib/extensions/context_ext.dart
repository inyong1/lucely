import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // bool get isTabletTrue {
  //   final media = MediaQuery.of(this);
  //   final width = media.size.width;
  //   var heigth = media.size.height;
  //   if (media.orientation == Orientation.landscape) {
  //     final statusbar = ui.window.padding.top;
  //     final navigationBar = ui.window.padding.bottom;
  //
  //     heigth = statusbar + media.size.height + navigationBar;
  //   }
  //   return min(width, heigth) >= 600;
  // }
  //
  // bool get isPhoneTrue {
  //   final size = MediaQuery.of(this).size;
  //   return min(size.width, size.height) < 550;
  // }
}
