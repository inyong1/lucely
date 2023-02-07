import 'package:get/get.dart';

import '../controllers/luceguide_index_controller.dart';

class LuceguideIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LuceguideIndexController>(
      () => LuceguideIndexController(),
    );
  }
}
