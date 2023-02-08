import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/open_bookluce_controller.dart';

class OpenBookluceView extends GetView<OpenBookluceController> {
  const OpenBookluceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          return Text(controller.bookTitleObs.value);
        }),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
        actions: [
          IconButton(
              onPressed: () async {
                final result = await Get.toNamed(Routes.LUCEBOOK_CHAPTER_LIST);
                if (result != null && result is int) {
                  controller.chapterIndexObs.value = result;
                }
              },
              icon: const Icon(Icons.notes_outlined))
        ],
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Obx(() {
                return Text(
                  controller.chapterTitleList[controller.chapterIndexObs.value],
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                );
              }),
              8.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 50,
                  height: 8,
                  decoration:
                      BoxDecoration(color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                ),
              ),
              24.height,
              const Text(
                  """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."""),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Stack(
            children: [
              500.width,
              50.height,
              Center(
                child: Obx(
                  () => Text(
                      "Page ${controller.chapterIndexObs.value + 1}/${controller.chapterTitleList.length}"),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Obx(() {
                  if (controller.chapterIndexObs.value <= 0) return const SizedBox.shrink();
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.blue, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: InkResponse(
                        onTap: controller.decrementChapterIndex,
                        child: const Icon(Icons.arrow_back, color: AppColor.blue, size: 18),
                      ),
                    ),
                  );
                }),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Obx(() {
                  if (controller.chapterIndexObs.value >= controller.chapterTitleList.length - 1) {
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
                        onTap: controller.incrementChapterIndex,
                        child: const Icon(Icons.arrow_forward, color: AppColor.blue, size: 18),
                      ),
                    ),
                  );
                }),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Obx(() {
                  if (controller.chapterIndexObs.value >= controller.chapterTitleList.length - 1) {
                    return SizedBox(
                      height: 32,
                      child: FilledButton(
                          style: FilledButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () => Get.back(),
                          child: const Text('Selesai')),
                    );
                    ;
                  }
                  return const SizedBox.shrink();
                }),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
