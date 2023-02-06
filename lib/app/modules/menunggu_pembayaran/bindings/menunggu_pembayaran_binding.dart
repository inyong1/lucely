import 'package:get/get.dart';

import '../controllers/menunggu_pembayaran_controller.dart';

class MenungguPembayaranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenungguPembayaranController>(
      () => MenungguPembayaranController(),
    );
  }
}
