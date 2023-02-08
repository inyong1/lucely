import 'package:get/get.dart';
import 'package:lucely/app/modules/lucebook_index/views/lucebook_index_view.dart';

class OpenBookluceController extends GetxController {
  final bookTitleObs = "".obs;
  final chapterIndexObs = 0.obs;
  final chapterTitleList = LucebookIndexView.chapter;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is Map) {
      bookTitleObs.value = Get.arguments['book_title'] as String;
    }
  }

  void decrementChapterIndex() {
    if (chapterIndexObs.value <= 0) return;
    chapterIndexObs.value--;
  }

  void incrementChapterIndex() {
    if (chapterIndexObs.value >= chapterTitleList.length - 1) return;
    chapterIndexObs.value++;
  }
}
