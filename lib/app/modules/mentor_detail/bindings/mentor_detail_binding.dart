import 'package:get/get.dart';

import '../controllers/mentor_detail_controller.dart';

class MentorDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MentorDetailController>(
      () => MentorDetailController(),
    );
  }
}
