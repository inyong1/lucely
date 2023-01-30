import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/home/views/widgets/greeting_widget.dart';
import 'package:lucely/app/modules/home/views/widgets/proverb_card_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bgblue.jpg",fit: BoxFit.fill),
          const Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20),
            child: GreetingWidget(),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Padding(padding: EdgeInsets.symmetric(horizontal: 32), child: ProverbCardWidget())
              ],
            ),
          ),

        ],
      ),
    );
  }
}
