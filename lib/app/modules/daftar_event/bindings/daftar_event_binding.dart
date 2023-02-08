import 'package:get/get.dart';

import '../controllers/daftar_event_controller.dart';

class DaftarEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaftarEventController>(
      () => DaftarEventController(),
    );
  }
}
