import 'package:get/get.dart';

import '../controllers/pilih_tanggal_controller.dart';

class PilihTanggalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PilihTanggalController>(
      () => PilihTanggalController(),
    );
  }
}
