import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/bookluce_grid.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/event_slider.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/greeting_widget.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/guide_slider.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/menu_grid_widget.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/proverb_card_widget.dart';
import 'package:lucely/app/modules/main/views/tabs/widgets/konseling_slider.dart';
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
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: GreetingWidget(),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 140),
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
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:   [
                        const MenuGridWidget(),
                        const KonselingSlider(),
                        const BookluceGrid(),
                        8.height,
                        const EventSlider(),
                        12.height,
                        const GuideSlider(),
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
