import 'package:get/get.dart';

import '../controllers/psikolog_detail_controller.dart';

class PsikologDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PsikologDetailController>(
      () => PsikologDetailController(),
    );
  }
}
