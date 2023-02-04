import 'package:get/get.dart';

import '../controllers/editakun_controller.dart';

class EditakunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditakunController>(
      () => EditakunController(),
    );
  }
}
