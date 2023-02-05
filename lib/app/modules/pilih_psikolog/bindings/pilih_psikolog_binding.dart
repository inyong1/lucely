import 'package:get/get.dart';

import '../controllers/pilih_psikolog_controller.dart';

class PilihPsikologBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PilihPsikologController>(
      () => PilihPsikologController(),
    );
  }
}
