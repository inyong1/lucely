import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/main/views/widgets/greeting_widget.dart';
import 'package:lucely/app/modules/main/views/widgets/menu_grid_widget.dart';
import 'package:lucely/app/modules/main/views/widgets/proverb_card_widget.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../controllers/home_controller.dart';

class HomeTabView extends GetView<HomeController> {
  const HomeTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bgblue.jpg", fit: BoxFit.fill),
          const Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20),
            child: GreetingWidget(),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 170),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        60.height,
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                          ),
                          height: 50,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ProverbCardWidget(),
                    ),
                  ],
                ),
                Material(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        MenuGridWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
