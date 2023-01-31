import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';
import 'package:lucely/app/data/models/user/user_repository.dart';

import '../../../data/datastate.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final UserRepository userRepository;
  final LocalDataSource localDataSource;
  final ingatkanObs = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailErrorObs = Rxn<String>();
  final passwordErrorObs = Rxn<String>();
  final loginStateObs = Rx<DataState>(DataStateEmpty());
  final passwordObscureObs = true.obs;

  LoginController({required this.userRepository, required this.localDataSource});

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {
      emailErrorObs.value = null;
      if (emailController.text.isNotEmpty && !emailController.text.isEmail) {
        emailErrorObs.value = "Invalid email address";
      }
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  void onButtonLoginClick() async {
    if (emailErrorObs.value?.isNotEmpty == true || passwordErrorObs.value?.isNotEmpty == true) {
      return;
    }
    if (emailController.text.isEmpty) {
      emailErrorObs.value = "Must be filled";
      return;
    }
    if (passwordController.text.isEmpty) {
      passwordErrorObs.value = "Must be filled";
      return;
    }
    loginStateObs.value = DataStateLoading();
    loginStateObs.value =
        await userRepository.login(email: emailController.text, password: passwordController.text);
    if (loginStateObs.value is DataStateError) {
      Get.dialog(
        AlertDialog(
          title: const Text("Gagal"),
          content: Text(loginStateObs.value.message ?? "Terjadi kesalahan"),
        ),
      );
    } else {
      await localDataSource.writeBool(key: LocalDataSource.KEY_IS_FIRST_RUN, value: false);
      Get.offAllNamed(Routes.MAIN);
    }
  }
}
