import 'package:get/get.dart';

import '../controllers/tentang_app_controller.dart';

class TentangAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TentangAppController>(
      () => TentangAppController(),
    );
  }
}
