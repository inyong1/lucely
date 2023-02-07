import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/app_color.dart';
import '../controllers/bookluce_controller.dart';

class BookluceView extends GetView<BookluceController> {
  const BookluceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookluce'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkResponse(
            onTap: () => Get.back(),
            child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [

            ],
          ),
        ),
      ]),
    );
  }
}
