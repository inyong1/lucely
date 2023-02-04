import 'package:get/get.dart';

import '../controllers/kontak_admin_controller.dart';

class KontakAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KontakAdminController>(
      () => KontakAdminController(),
    );
  }
}
