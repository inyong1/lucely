import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/datastate.dart';

class LoginController extends GetxController {
  final ingatkanObs = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailErrorObs = Rxn<String>();
  final passwordErrorObs = Rxn<String>();
  final loginStateObs = Rx<DataState>(DataStateEmpty());
  final passwordObscureObs = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
