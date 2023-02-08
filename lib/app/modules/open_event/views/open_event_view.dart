import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/routes/app_pages.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/open_event_controller.dart';

class OpenEventView extends GetView<OpenEventController> {
  const OpenEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: controller.headerBacgroundColorObs.value,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Expanded(
                  child: CustomScrollView(
                    // controller: controller.scrollController,
                    slivers: [
                      SliverAppBar(
                        // stretch: true,
                        // centerTitle: true,
                        // title: Text(controller.titleObs.value),
                        // backgroundColor: controller.topBackgroundObs.value,
                        leading: InkResponse(
                            onTap: () => Get.back(),
                            child: const Icon(
                              Icons.chevron_left,
                              size: 32,
                              color: AppColor.white,
                            )),
                        // backgroundColor: controller.headerBacgroundColorObs.value,
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.parallax,
                          background: Image.asset(
                            "assets/images/event3b.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        expandedHeight: 300,
                        // pinned: true,
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 32, top: 100, right: 20, bottom: 32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Tentang Event",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              8.height,
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 60,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                                ),
                              ),
                              8.height,
                              const Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text:
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book... "),
                                  TextSpan(
                                      text: "Baca selengkapnya",
                                      style: TextStyle(fontWeight: FontWeight.bold))
                                ]),
                              ),
                              16.height,
                              const Text(
                                "Manfaat",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              8.height,
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 60,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                                ),
                              ),
                              8.height,
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle, color: AppColor.black)),
                                  const Text('Sertifikat gratis untuk peserta'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle, color: AppColor.black)),
                                  const Text('Networking'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle, color: AppColor.black)),
                                  const Text('Knowledge'),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      width: 5,
                                      height: 5,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle, color: AppColor.black)),
                                  const Text('Doorprize'),
                                ],
                              ),
                              16.height,
                              const Text(
                                "Pembicara",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              8.height,
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 60,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                                ),
                              ),
                              8.height,
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.blue),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.send, color: AppColor.blue, size: 18),
                      ),
                      10.width,
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.blue),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.bookmark, color: AppColor.blue, size: 18),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                              height: 32,
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () => Get.toNamed(Routes.DAFTAR_EVENT),
                                  child: Text('Daftar Event'))),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
