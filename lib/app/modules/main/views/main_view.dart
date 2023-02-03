import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/modules/main/controllers/main_controller.dart';
import 'package:lucely/app/modules/main/views/tabs/akun_view.dart';
import 'package:lucely/app/modules/main/views/tabs/explorer_view.dart';
import 'package:lucely/app/modules/main/views/tabs/home_tab_view.dart';
import 'package:lucely/app/modules/main/views/tabs/konseling_view.dart';

import '../../../constant/app_color.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.tabIndexObs.value) {
          case 1:
            return const KonselingView();
          case 2:
            return const ExplorerView();
          case 3:
            return const AkunView();
        }
        return const HomeTabView();
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          selectedItemColor: AppColor.blue,
          currentIndex: controller.tabIndexObs.value,
          unselectedItemColor: AppColor.darkGrey,
          unselectedLabelStyle: const TextStyle(color: AppColor.darkGrey),
          showUnselectedLabels: true,
          onTap: (index) => controller.tabIndexObs.value = index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: "Konseling",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Explorer",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Akun",
            ),
          ],
        );
      }),
    );
  }
}
