import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VoucherKonselingController extends GetxController {

  TextEditingController? textEditingController;

  @override
  void onInit() {
    super.onInit();
    textEditingController  = TextEditingController();
  }

  @override
  void onClose() {
    textEditingController?.dispose();
    super.onClose();
  }

}
