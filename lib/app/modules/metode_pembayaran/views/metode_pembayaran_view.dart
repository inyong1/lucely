import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/metode_pembayaran_controller.dart';

class MetodePembayaranView extends GetView<MetodePembayaranController> {
  const MetodePembayaranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Metode Pembayaran'),
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
              _buildItemMetodePembayaran(0, "bri.png", "BRI"),
              const Divider(thickness: 1.5,height: 2),
              _buildItemMetodePembayaran(1, "bca.png", "BCA"),
              const Divider(thickness: 1.5,height: 2),
              _buildItemMetodePembayaran(2, "bni.png", "BNI"),
              const Divider(thickness: 1.5,height: 2),
              _buildItemMetodePembayaran(3, "mandiri.png", "Mandiri"),
              const Divider(thickness: 1.5,height: 2),
              _buildItemMetodePembayaran(4, "permata.png", "Permata"),
            ],
          ),
        ),
        const Divider(height: 2, thickness: 1),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () async {
                if(controller.selectedIndex.value < 0){
                  Get.snackbar("Perhatian", "Harap pilih metode pembayaran");
                  return;
                }
                Get.toNamed(Routes.MENUNGGU_PEMBAYARAN);
              },
              child: const Text('Lanjutkan Pembayaran')),
        ),
      ]),
    );
  }

  Widget _buildItemMetodePembayaran(int value, String assetImage, String title) {
    return InkWell(
      onTap: () => controller.selectedIndex.value = value,
      child: Row(
        children: [
          Image.asset("assets/icons/$assetImage", width: 50),
          8.width,
          Expanded(child: Text(title)),
          Obx(() {
            return AbsorbPointer(
              child: Radio<int>(
                value: value,
                groupValue: controller.selectedIndex.value,
                onChanged: (v) {},
              ),
            );
          })
        ],
      ),
    );
  }
}
