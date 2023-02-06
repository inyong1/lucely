import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/voucher_konseling_controller.dart';

class VoucherKonselingView extends GetView<VoucherKonselingController> {
  const VoucherKonselingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voucher Konseling'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkResponse(
            onTap: () => Get.back(result: controller.textEditingController?.text),
            child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              TextField(
                controller: controller.textEditingController,
                decoration: InputDecoration(
                  hintText: "Masukan Kode Voucher",
                  prefixIcon: const Icon(Icons.search, size: 24),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              16.height,
              const Text(
                "Voucher Konseling Untukmu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              20.height,
              _buildVoucherView(),
              16.height,
              _buildVoucherView(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildVoucherView() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColor.blue, width: 1.5),
        ),
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "#FRSTIME30",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Dapatkan potongan 30% untuk konseling pertama",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 28,
                child: FilledButton(
                    onPressed: () => Get.back(result: "FRSTIME30"),
                    child: const Text(
                      'Pakai Voucher',
                      style: TextStyle(fontSize: 11),
                    )))
          ],
        ));
  }
}
