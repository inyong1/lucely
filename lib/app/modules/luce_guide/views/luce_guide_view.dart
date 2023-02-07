import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/luce_guide_controller.dart';

class LuceGuideView extends GetView<LuceGuideController> {
  const LuceGuideView({Key? key}) : super(key: key);

  static final guideList = <List<dynamic>>[
    ["Mengatasi Kesepian", "anxiety.png", AppColor.lemonChiffon],
    ["Kurangi Kecemasan", "self-harm.png", AppColor.greenLight],
    ["Membangun Mind Management", "mind_management.png", AppColor.pigPink],
    ["Redakan Demotivation", "demotivation.png", AppColor.lightCyan],
    ["Berhenti Sakiti Diri (Self-harm)", "Kesepian.png", AppColor.lemonChiffon],
    ["Metode Eisen-Hower Matrixs", "self-harm.png", AppColor.greenLight],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LuceGuide'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => 16.height,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            itemCount: guideList.length,
            itemBuilder: (context, index) {
              final data = guideList[index];
              return _buildItem(data[0], data[1], data[2], () {
                Get.toNamed(Routes.LUCEGUIDE_INDEX, arguments: data);
              });
            },
          ),
        ),
      ]),
    );
  }

  _buildItem(String title, String imageAsset, Color color, void Function() ontap) {
    return Material(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      child: InkWell(
        onTap: ontap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    20.height,
                    const Text("5 sesi singkat", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              Image.asset("assets/images/$imageAsset", width: 70),
            ],
          ),
        ),
      ),
    );
  }
}
