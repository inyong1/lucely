import 'package:get/get.dart';

class LucebookIndexController extends GetxController {
  final booknameObs = "".obs;
  final bookCreatorObs = "".obs;
  final bookImageObs = "".obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is Map) {
      booknameObs.value = Get.arguments['title'];
      bookCreatorObs.value = Get.arguments['creator'];
      bookImageObs.value = 'assets/images/${Get.arguments['image']}';
    }
  }
}
