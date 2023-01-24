import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lucely/app/data/datastate.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';

import '../../../data/models/user/user_repository.dart';

class RegisterController extends GetxController {
  final LocalDataSource localDataSource;
  final UserRepository userRepository;

  RegisterController({required this.localDataSource, required this.userRepository});

  final agreeObs = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final emailErrorObs = Rxn<String>();
  final passwordErrorObs = Rxn<String>();
  final password2ErrorObs = Rxn<String>();
  final registerStateObs = Rx<DataState>(DataStateEmpty());
  final passwordObscureObs = true.obs;

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(() {
      emailErrorObs.value = null;
      if (emailController.text.isNotEmpty && !emailController.text.isEmail) {
        emailErrorObs.value = "Invalid email address";
      }
    });

    passwordController.addListener(() {
      passwordErrorObs.value = null;
      if (passwordController.text.length < 8) {
        passwordErrorObs.value = "Minimal 8 karakter";
      }
    });

    password2Controller.addListener(() {
      password2ErrorObs.value = null;
      if (password2Controller.text.length < 8) {
        password2ErrorObs.value = "Minimal 8 karakter";
      } else if (password2Controller.text != passwordController.text) {
        password2ErrorObs.value = "Password tidak sama";
      }
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    password2Controller.dispose();
    super.onClose();
  }

  onButtonBuatAkunClick() {
    emailErrorObs.value = null;
    if (emailController.text.isEmpty) {
      emailErrorObs.value = "Input email addresss";
    } else if (!emailController.text.isEmail) {
      emailErrorObs.value = "Invalid email address";
    }

    passwordErrorObs.value = null;
    if (passwordController.text.isEmpty) {
      passwordErrorObs.value = "Input password";
    } else if (passwordController.text.length < 8) {
      passwordErrorObs.value = "Minimal 8 karakter";
    }

    password2ErrorObs.value = null;
    if (password2Controller.text.isEmpty) {
      password2ErrorObs.value = "Input password";
    } else if (password2Controller.text.length < 8) {
      password2ErrorObs.value = "Minimal 8 karakter";
    } else if (password2Controller.text != passwordController.text) {
      password2ErrorObs.value = "Password tidak sama";
    }

    if (emailErrorObs.value != null ||
        passwordErrorObs.value != null ||
        password2ErrorObs.value != null) {
      return;
    }

    Get.showOverlay(
      loadingWidget: const Center(child: CircularProgressIndicator()),
      asyncFunction: () {
        return userRepository.registerUser(
          email: emailController.text,
          password: passwordController.text,
          name: "",
        );
      },
    );
  }
}
