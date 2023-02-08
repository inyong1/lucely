import 'package:get/get.dart';

import '../controllers/open_luceguide_controller.dart';

class OpenLuceguideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpenLuceguideController>(
      () => OpenLuceguideController(),
    );
  }
}
