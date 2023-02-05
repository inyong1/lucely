import 'package:get/get.dart';

import '../controllers/pilih_mentor_controller.dart';

class PilihMentorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PilihMentorController>(
      () => PilihMentorController(),
    );
  }
}
