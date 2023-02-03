import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/data/appstate_service.dart';

import '../../../../../constant/app_color.dart';

class GreetingWidget extends GetView<AppStateService> {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(() {
          return Text(
            "Hi, ${controller.userObs.value?.email}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
          );
        }),
        const Text('Yuk ceritakan isi hatimu, temukan jalan keluar atas permasalahanmu.'),
      ],
    );
  }
}
