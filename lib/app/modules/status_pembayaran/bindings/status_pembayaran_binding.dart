import 'package:get/get.dart';

import '../controllers/status_pembayaran_controller.dart';

class StatusPembayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatusPembayaranController>(
      () => StatusPembayaranController(),
    );
  }
}
