import 'package:get/get.dart';

import '../controllers/lucebook_index_controller.dart';

class LucebookIndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LucebookIndexController>(
      () => LucebookIndexController(),
    );
  }
}
