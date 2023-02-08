import 'package:get/get.dart';

import '../controllers/open_event_controller.dart';

class OpenEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpenEventController>(
      () => OpenEventController(),
    );
  }
}
