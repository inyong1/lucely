import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/lucebook_index/views/lucebook_index_view.dart';
import 'package:lucely/app/modules/open_bookluce/views/open_bookluce_view.dart';

import '../../../constant/app_color.dart';
import '../controllers/lucebook_chapter_list_controller.dart';

class LucebookChapterListView extends GetView<LucebookChapterListController> {
  const LucebookChapterListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter List'),
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
              for (int i = 0; i < 5; i++) ...[
                InkWell(
                  onTap: () => Get.back(result: i),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Chapter ${i + 1}: ${LucebookIndexView.chapter[i]}',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const Divider(thickness: 1, height: 1),
              ]
            ],
          ),
        ),
      ]),
    );
  }
}
