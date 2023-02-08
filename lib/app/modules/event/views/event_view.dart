import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

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
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        20.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Upgrade dirimu dengan cara yang seru...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              16.height,
              SizedBox(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "cari events",
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(Icons.search, size: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: List.generate(20, _buildItem),
          ),
        ),
      ]),
    );
  }

  Widget _buildItem(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: const Color(0xffeef3f7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/images/event3.png", width: 90)),
                12.width,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 20,
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text("webinar", style: TextStyle(fontSize: 10)),
                        ),
                      ),
                    ),
                    4.height,
                    const Text(
                      "Menciptakan Mindfullness Dalam Akademik",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    8.height,
                    Row(
                      children: [
                        Icon(Icons.calendar_month, color: Colors.amber, size: 12),
                        4.width,
                        Text("Rabu, 27 Februari 2023", style: TextStyle(fontSize: 11)),
                      ],
                    ),Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.blueAccent, size: 12),
                        4.width,
                        Text("14:00 - 15:30", style: TextStyle(fontSize: 11)),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
