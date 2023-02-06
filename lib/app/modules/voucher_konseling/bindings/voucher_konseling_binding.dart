import 'package:get/get.dart';

import '../controllers/voucher_konseling_controller.dart';

class VoucherKonselingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VoucherKonselingController>(
      () => VoucherKonselingController(),
    );
  }
}
