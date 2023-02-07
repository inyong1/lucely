import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/modules/main/controllers/home_controller.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../../constant/app_color.dart';
import '../../../../../routes/app_pages.dart';

class MenuGridWidget extends GetView<HomeController> {
  const MenuGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 3 / 4,
      ),
      children: [
        _buildItem("assets/icons/cunseling.png", "Konseling", (){
          controller.mainController.tabIndexObs.value = 1;
        }),
        _buildItem("assets/icons/event.png", "Event", (){
          Get.toNamed(Routes.EVENT);
        }),
        _buildItem("assets/icons/luce_guide.png", "LuceGuide", (){
          Get.toNamed(Routes.LUCE_GUIDE);
        }),
        _buildItem("assets/icons/bookluce.png", "Bookluce", (){
          Get.toNamed(Routes.BOOKLUCE);
        }),
      ],
    );
  }

  Widget _buildItem(String asset, String label, VoidCallback onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: min(constraints.maxWidth, 70),
            child: Material(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColor.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(asset),
                  ),
                )),
          );
        }),
        8.height,
        Text(label),
      ],
    );
  }
}
