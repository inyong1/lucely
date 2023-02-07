import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/app_color.dart';
import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event'),
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
