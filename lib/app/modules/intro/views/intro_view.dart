import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';
import 'intro1_view.dart';
import 'intro2_view.dart';
import 'intro3_view.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView(
            children: [
              // Center(child: Image.asset("assets/logo/logo.png", width: context.width/2)),
              const Intro1View(),
              const Intro2View(),
              const Intro3View(),
            ],
          ),
        ],
      ),
    );
  }
}
