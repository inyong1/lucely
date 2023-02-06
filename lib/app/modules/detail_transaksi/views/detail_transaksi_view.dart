import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/routes/app_pages.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/detail_transaksi_controller.dart';

class DetailTransaksiView extends GetView<DetailTransaksiController> {
  const DetailTransaksiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Transaksi'),
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
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                              backgroundImage: AssetImage("assets/images/psikolog3.jpg")),
                          16.width,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: const [
                                Text(
                                  "Zadev. M.Psi., Psikolog",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text('Psikolog')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 2, height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(5),
                              color: AppColor.blue.withAlpha(30),
                              child:
                                  const Icon(Icons.phone_in_talk_outlined, color: AppColor.blue)),
                          16.width,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  "Paket Nyaman",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                const Text('60 menit konseling dengan Psikolog'),
                                4.height,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.calendar_month, size: 15),
                                    8.width,
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: const [
                                          Text("Senin, 20 Februari 2023",
                                              style: TextStyle(fontSize: 11)),
                                          Text("19:00 - 20:00", style: TextStyle(fontSize: 11)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                4.height,
                                Row(
                                  children: const [
                                    Text(
                                      "Topik:",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                                    ),
                                    Text("Kecemasan", style: TextStyle(fontSize: 11)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(thickness: 2, height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                      child: InkWell(
                        child: Row(
                          children: const [
                            Text(
                              "Harga Paket",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Spacer(),
                            Text(
                              "Rp150.000",
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              16.height,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    8.width,
                    const Icon(Icons.monetization_on_outlined, color: Colors.amber),
                    16.width,
                    Obx(() {
                      return Text(
                          controller.voucherObs.value.isEmpty
                              ? "Punya Vouhcer"
                              : controller.voucherObs.value,
                          style: const TextStyle(fontWeight: FontWeight.bold));
                    }),
                    const Spacer(),
                    Obx(() {
                      if (controller.voucherObs.value.isNotEmpty) return const SizedBox.shrink();
                      return InkWell(
                        onTap: () async {
                          final result = await Get.toNamed(Routes.VOUCHER_KONSELING);
                          if (result != null && result is String && result.isNotEmpty) {
                            controller.voucherObs.value = result;
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text("Tambah",
                              style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.blue)),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 2, thickness: 1),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Dengan ini kami menyetujui syarat dan ketentuan",
                      style: TextStyle(fontSize: 10),
                    ),
                    const Text(
                      "Peraturan Konseling",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    8.height,
                    const Text('Total Biaya', style: TextStyle(fontSize: 12)),
                    const Text(
                      "Rp150.000",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ],
                )),
                SizedBox(
                  height: 36,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () async {
                        final metode = await Get.toNamed(Routes.METODE_PEMBAYARAN);
                      },
                      child: const Text('Bayar')),
                ),
              ],
            )),
      ]),
    );
  }
}
