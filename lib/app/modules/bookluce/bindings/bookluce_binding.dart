import 'package:get/get.dart';

import '../controllers/bookluce_controller.dart';

class BookluceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookluceController>(
      () => BookluceController(),
    );
  }
}
