import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../../bottom_sheet_pilih_paket.dart';
import '../controllers/pilih_mentor_controller.dart';
import '../mentor.dart';

class PilihMentorView extends GetView<PilihMentorController> {
  const PilihMentorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentor Pilihan'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
        InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(
        children: [
          const Divider(height: 2, color: AppColor.darkGrey),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: TextField(
              onChanged: (v) => controller.filterObs.value = v,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  hintText: "cari mentor",
                  prefixIcon: const Icon(Icons.search, size: 24),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 30, minWidth: 40)),
              autofocus: false,
            ),
          ),
          Obx(() {
            return Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                itemBuilder: (context, index) =>
                    _buildMentorItem(context, controller.mentorListObs.value[index]),
                separatorBuilder: (context, index) => 10.height,
                itemCount: controller.mentorListObs.value.length,
              ),
            );
          }),
        ],
      ),
    );
  }

  _buildMentorItem(BuildContext context, Mentor mentor) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.MENTOR_DETAIL),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/${mentor.image}",
                height: 130,
              ),
            ),
            16.width,
            Expanded(
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        mentor.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "SIPP: ${DateTime.now().millisecondsSinceEpoch}",
                      ),
                      8.height,
                      const Text(
                        'Kepribadian, Kecamasan, Trauma, Pengembangan Diri, +3 lainnya',
                        style: TextStyle(fontSize: 12),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                        ],
                      ),
                      const Text("Jadwal Terdekat", style: TextStyle(fontWeight: FontWeight.bold)),
                      const Text("Minggu, 17:00 WIB", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 32,
                      width: 100,
                      child: FilledButton(
                          onPressed: () {
                            Get.bottomSheet(const BottomSheetPilihPaket(),
                                backgroundColor: AppColor.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(13))));
                          },
                          child: const Text('Pilih')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
