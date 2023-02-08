import 'package:get/get.dart';

import '../controllers/lucebook_chapter_list_controller.dart';

class LucebookChapterListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LucebookChapterListController>(
      () => LucebookChapterListController(),
    );
  }
}
