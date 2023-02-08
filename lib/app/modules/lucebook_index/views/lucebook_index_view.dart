import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/routes/app_pages.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/lucebook_index_controller.dart';

class LucebookIndexView extends GetView<LucebookIndexController> {
  const LucebookIndexView({Key? key}) : super(key: key);

  static const chapter = [
    "Intro",
    "Being Yourself",
    "Dreams",
    "Love",
    "Mindset",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Bookluce'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Obx(
                () => Column(
                  children: [
                    Image.asset(controller.bookImageObs.value, width: 120),
                    4.height,
                    Text(
                      controller.booknameObs.value,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(controller.bookCreatorObs.value, style: const TextStyle(fontSize: 12)),
                    16.height,
                    SizedBox(
                      height: 36,
                      child: ElevatedButton(
                          onPressed: () => Get.toNamed(
                                Routes.OPEN_BOOKLUCE,
                                arguments: {"book_title": controller.booknameObs.value},
                              ),
                          child: const Text('Baca Sekarang')),
                    ),
                  ],
                ),
              ),
              24.height,
              const Text("Tentang Buku",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              8.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 60,
                  height: 8,
                  decoration:
                      BoxDecoration(color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                ),
              ),
              16.height,
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(fontSize: 12),
              ),
              24.height,
              const Text("Chapter List",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              8.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 60,
                  height: 8,
                  decoration:
                      BoxDecoration(color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                ),
              ),
              16.height,
              for (int i = 0; i < 5; i++) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Chapter ${i + 1}: ${chapter[i]}',
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const Divider(thickness: 1, height: 1),
              ],
            ],
          ),
        ),
      ]),
    );
  }
}
