import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';
import '../../../constant/app_color.dart';

class LuceguideIndexController extends GetxController {

  static const sessionList = [
    LuceGuideSession(title: "Mengenali Kecemasan"),
    LuceGuideSession(title: "Kendalikan Emosi dan Pikiran"),
    LuceGuideSession(title: "Bangun Kebiasaan Lebih Baik"),
    LuceGuideSession(title: "Mengenali Kecemasan"),
    LuceGuideSession(title: "Kendalikan Emosi dan Pikiran"),
    LuceGuideSession(title: "Bangun Kebiasaan Lebih Baik"),
    LuceGuideSession(title: "Penutup"),
  ];
  final headerBacgroundColorObs = AppColor.lemonChiffon.obs;
  final titleObs = "Mengatasi Kesepian".obs;
  final topTitleObs = "".obs;
  final topBackgroundObs = Colors.white.obs;
  late ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    if (Get.arguments != null && Get.arguments is List) {
      titleObs.value = Get.arguments[0];
      headerBacgroundColorObs.value = Get.arguments[2];
      topBackgroundObs.value = headerBacgroundColorObs.value;
    }
    scrollController.addListener(() {
      // print("scrolling offset:${scrollController.offset.toStringAsFixed(2)}, maxScrollExtent:${scrollController.position.maxScrollExtent.toStringAsFixed(2)}");
      if (scrollController.offset >= 250) {
        topTitleObs.value = titleObs.value;
        topBackgroundObs.value = Colors.white;
      } else {
        topTitleObs.value = "";
        topBackgroundObs.value = headerBacgroundColorObs.value;
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
