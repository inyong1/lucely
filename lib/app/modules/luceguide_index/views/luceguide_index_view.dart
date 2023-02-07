import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../controllers/luceguide_index_controller.dart';

class LuceguideIndexView extends GetView<LuceguideIndexController> {
  const LuceguideIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: controller.headerBacgroundColorObs.value,
      body: SafeArea(
          child: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          Obx(() {
            return SliverAppBar(
              stretch: true,
              // centerTitle: true,
              // title: Text(controller.titleObs.value),
              backgroundColor: controller.topBackgroundObs.value,
              leading: InkResponse(
                  onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 32)),
              // backgroundColor: controller.headerBacgroundColorObs.value,
              flexibleSpace: FlexibleSpaceBar(
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
                        controller.titleObs.value,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const Text(
                          'Untuk kamu yang ingin memahami bagaimana cara menangani tekanan, mengendalikan impuls, serta mengatasi tekanan emosional dan psikologis.')
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
                    _buildIndexItem("Mengenali Kecemasan"),
                    _buildIndexItem("Kendalikan Emosi dan Pikiran"),
                    _buildIndexItem("Bangun Kebiasaan Lebih Baik"),
                    _buildIndexItem("Mengenali Kecemasan"),
                    _buildIndexItem("Kendalikan Emosi dan Pikiran"),
                    _buildIndexItem("Bangun Kebiasaan Lebih Baik"),

                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildIndexItem(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(width: 1)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Sesi 1'),
          12.height,
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          12.height,
          Text('5 Menit'),
        ],
      ),
    );
  }
}
