import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../data/appstate_service.dart';
import '../../../data/models/user/user.dart';

class GantisandiController extends GetxController {
  final AppStateService appStateService = Get.find();
  final userObs = Rxn<User>();

  Worker? _userWorker;

  @override
  void onInit() {
    super.onInit();
    userObs.value = appStateService.userObs.value;
    _userWorker = ever(appStateService.userObs, (callback) => userObs.value = callback);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    _userWorker?.dispose();
    super.onClose();
  }

  void onButtonSimpanClick() {
    Get.dialog(AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 500),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.darkGrey,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              height: 5,
              width: 36,
            ),
          ),
          28.height,
          const Text(
            "Kata Sandi Berhasil Diganti",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Image.asset("assets/images/password.png", width: 200),
        ],
      ),
    ));
  }
}
