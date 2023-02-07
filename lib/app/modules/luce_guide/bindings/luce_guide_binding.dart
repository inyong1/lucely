import 'package:get/get.dart';

import '../controllers/luce_guide_controller.dart';

class LuceGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LuceGuideController>(
      () => LuceGuideController(),
    );
  }
}
