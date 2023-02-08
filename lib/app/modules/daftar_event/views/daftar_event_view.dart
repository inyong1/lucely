import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/daftar_event_controller.dart';

class DaftarEventView extends GetView<DaftarEventController> {
  const DaftarEventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Partisipan'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/event3.png", width: 100)),
                  16.width,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Menciptakan Mindfullness Dalam Akademik",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      16.height,
                      Row(
                        children: [
                          const Icon(Icons.calendar_month, size: 12, color: Colors.amber),
                          8.width,
                          const Text("Rabu, 27 Februari 2023", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.access_time, size: 12, color: Colors.blue),
                          8.width,
                          const Text("14:00 - 15:30", style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ],
                  ))
                ],
              ),
              const Divider(height: 24, thickness: 1.5),
              TextFormField(
                decoration: const InputDecoration(labelText: "Nama", hintText: "input nama"),
                keyboardType: TextInputType.name,
              ),
              16.height,
              TextFormField(
                decoration: const InputDecoration(labelText: "Email", hintText: "input email"),
                keyboardType: TextInputType.emailAddress,
              ),
              16.height,
              TextFormField(
                decoration:
                    const InputDecoration(labelText: "No telepon", hintText: "input no telepon"),
                keyboardType: TextInputType.phone,
              ),
              16.height,
              const Text(
                'Informasi selanjutkan akan dikirim melalui email atau no telepon yang sudah diberikan',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        const Divider(thickness: 1.5),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
          child: ElevatedButton(onPressed: () {}, child: Text('Daftar Sekarang')),
        ),
      ]),
    );
  }
}
