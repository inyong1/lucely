import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lucely/app/modules/luceguide_index/controllers/luceguide_index_controller.dart';
import 'package:lucely/app/modules/luceguide_index/luce_guide_session.dart';


class OpenLuceguideController extends GetxController {
  final currentSessionIndex = 0.obs;
  final sessionCountObs = 0.obs;
  final sessionTitleObs= "".obs;
  final topTitleObs = "".obs;
  final contentObs ="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.".obs;
  late ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(() {
      // print("scrolling offset:${scrollController.offset.toStringAsFixed(2)}, maxScrollExtent:${scrollController.position.maxScrollExtent.toStringAsFixed(2)}");
      if (scrollController.offset >= 250) {
        topTitleObs.value = sessionTitleObs.value;
      } else {
        topTitleObs.value = "";
      }
    });
    // LuceguideIndexController indexController = Get.find();
    List<LuceGuideSession> sessionList = LuceguideIndexController.sessionList;
    currentSessionIndex.value = Get.arguments as int;
    sessionTitleObs.value = sessionList[currentSessionIndex.value].title;
    sessionCountObs.value = sessionList.length;
  }


  void changeIndex(int index){
    currentSessionIndex.value = index;
    sessionTitleObs.value = LuceguideIndexController.sessionList[index].title;
  }

  void incrementIdex() {
    if(currentSessionIndex.value >= sessionCountObs.value -1){
      return;
    }
    changeIndex(currentSessionIndex.value + 1);
  }

  void decrementIndex() {
    if(currentSessionIndex.value <= 0) return;
    changeIndex(currentSessionIndex.value -1);
  }
}
