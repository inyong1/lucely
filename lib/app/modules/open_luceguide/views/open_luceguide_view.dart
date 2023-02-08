import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';

import '../controllers/open_luceguide_controller.dart';

class OpenLuceguideView extends GetView<OpenLuceguideController> {
  const OpenLuceguideView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomScrollView(
              controller: controller.scrollController,
              slivers: [
                Obx(() {
                  return SliverAppBar(
                    stretch: true,
                    // centerTitle: true,
                    // title: Text(controller.titleObs.value),
                    leading: InkResponse(
                        onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 32)),
                    backgroundColor: AppColor.white,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      collapseMode: CollapseMode.parallax,
                      title: Text(
                        controller.topTitleObs.value,
                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      background: Container(
                        padding: const EdgeInsets.only(left: 40, right: 16),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              controller.sessionTitleObs.value,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    expandedHeight: 300,
                    pinned: true,
                  );
                }),
                SliverToBoxAdapter(
                  child: Material(
                    color: AppColor.white,
                    clipBehavior: Clip.antiAlias,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Obx((){
                            if(controller.currentSessionIndex.value == 1){
                              return Transform.translate(
                                  offset: const Offset(0, -30),
                                  child: Image.asset("assets/images/mind_management.png", height: 200));
                            }
                            return const SizedBox.shrink();
                          }),
                          Obx(() {
                            return Text(
                              controller.contentObs.value,
                              style: const TextStyle(fontSize: 16),
                            );
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
            child: Row(
              children: [
                Obx(() {
                  if (controller.currentSessionIndex.value == 0) {
                    return const SizedBox.shrink();
                  }
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.blue, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: InkResponse(
                        onTap: controller.decrementIndex,
                        child: const Icon(Icons.arrow_back, color: AppColor.blue, size: 18),
                      ),
                    ),
                  );
                }),
                const Spacer(),
                Obx(() {
                  if (controller.currentSessionIndex.value >=
                      controller.sessionCountObs.value - 1) {
                    return const SizedBox.shrink();
                  }
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.blue, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: InkResponse(
                        onTap: controller.incrementIdex,
                        child: const Icon(Icons.arrow_forward, color: AppColor.blue, size: 20),
                      ),
                    ),
                  );
                }),
                Obx(() {
                  if (controller.currentSessionIndex.value ==
                      controller.sessionCountObs.value - 1) {
                    return SizedBox(
                        height: 32,
                        child: FilledButton(
                            onPressed: () => Get.back(), child: const Text('Selesai')));
                  }
                  return const SizedBox.shrink();
                }),
              ],
            ),
          )
        ],
      )),
    );
  }
}
