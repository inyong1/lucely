import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/modules/base_page_view.dart';

import '../../../constant/app_color.dart';
import '../controllers/tentang_app_controller.dart';

class TentangAppView extends BasePageView<TentangAppController> {
  TentangAppView({Key? key}) : super(key: key);

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
            const Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(24),
                child: Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
                ''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ));
  }
}
