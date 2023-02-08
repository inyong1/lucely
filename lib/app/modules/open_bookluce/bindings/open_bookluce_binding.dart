import 'package:get/get.dart';

import '../controllers/open_bookluce_controller.dart';

class OpenBookluceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpenBookluceController>(
      () => OpenBookluceController(),
    );
  }
}
