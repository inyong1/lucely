import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/pilih_tanggal_controller.dart';

class PilihTanggalView extends GetView<PilihTanggalController> {
  const PilihTanggalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Tanggal dan Waktu'),
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
              const Text(
                "Pilih Tanggal",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              16.height,
              Row(
                children: [
                  _buildItemTanggal("Senin", 24),
                  8.width,
                  _buildItemTanggal("Selasa", 25),
                  8.width,
                  _buildItemTanggal("Rabu", 26),
                  8.width,
                  _buildItemTanggal("Kamis", 27),
                  8.width,
                  _buildItemTanggal("Kamis", -1),
                  8.width,
                ],
              ),
              36.height,
              const Text(
                "Pilih Waktu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              16.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildItemWaktu("12:00 - 13:00 WIB"),
                    8.width,
                    _buildItemWaktu("13:00 - 14:00 WIB"),
                    8.width,
                    _buildItemWaktu("14:00 - 15:00 WIB"),
                    8.width,
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 2, thickness: 1),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: const Text('Lanjutkan Transaksi'))),
      ]),
    );
  }

  Widget _buildItemTanggal(String hari, int date) {
    return Obx(() {
      return InkWell(
        onTap: () {
          controller.selectedDateObs.value = date;
          if(date == -1){

          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
                color:
                    controller.selectedDateObs.value == date ? AppColor.blue : Colors.transparent,
                width: 1.5),
          ),
          child: date == -1
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.calendar_month_outlined),
                )
              : Column(
                  children: [
                    Text(
                      hari,
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      "$date",
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Text(
                      "Feb",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
        ),
      );
    });
  }

  Widget _buildItemWaktu(String s) {
    return Obx(() {
      return InkWell(
        onTap: () => controller.selectedTime.value = s,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: controller.selectedTime.value == s ? AppColor.blue : Colors.transparent,
                  width: 1.5)),
          child: Text(s, style: TextStyle(fontSize: 12),),
        ),
      );
    });
  }
}
