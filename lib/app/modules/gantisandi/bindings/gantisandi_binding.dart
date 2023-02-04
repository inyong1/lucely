import 'package:get/get.dart';

import '../controllers/gantisandi_controller.dart';

class GantisandiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GantisandiController>(
      () => GantisandiController(),
    );
  }
}
