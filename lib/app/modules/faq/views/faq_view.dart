import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/base_page_view.dart';
import 'package:lucely/app/routes/app_pages.dart';

import '../../../constant/app_color.dart';
import '../controllers/faq_controller.dart';

class FaqView extends BasePageView<FaqController> {
  const FaqView({Key? key}) : super(key: key);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FaQ dan Bantuan'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading:
              InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 24)),
        ),
        body: Column(
          children: [
            Container(
              color: AppColor.lightGrey,
              height: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      onTap: () => Get.toNamed(Routes.TENTANG_APP),
                      title: const Text('FaQs'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    const Divider(height: 3, thickness: 1),
                    ListTile(
                      onTap: () => Get.toNamed(Routes.TENTANG_APP),
                      title: const Text('Tangang App'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    const Divider(height: 3, thickness: 1),
                    ListTile(
                      onTap: () => Get.toNamed(Routes.TENTANG_APP),
                      title: const Text('Kebijakan Privasi'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    const Divider(height: 3, thickness: 1),
                    ListTile(
                      onTap: () => Get.toNamed(Routes.TENTANG_APP),
                      title: const Text('Syarat & Ketentuan'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    const Divider(height: 3, thickness: 1),
                    ListTile(
                      onTap: () => Get.toNamed(Routes.TENTANG_APP),
                      title: const Text('Masukan & Saran'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                    const Divider(height: 3, thickness: 1),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
