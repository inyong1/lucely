import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/status_pembayaran_controller.dart';

class StatusPembayaranView extends GetView<StatusPembayaranController> {
  const StatusPembayaranView({Key? key}) : super(key: key);
  static const statusColor = [
    Color(0xfffdd184),
    Color(0xffa7e690),
    Color(0xfffd8687),
  ];
  static const statusString = ["Sedang Diproses", "Selesai", "Transaksi Dibatalkan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Konseling'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkResponse(
            onTap: () => Get.until((route) => Get.currentRoute == Routes.MAIN),
            child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              _buildItemStatusKonseling(0),
              16.height,
              _buildItemStatusKonseling(1),
              16.height,
              _buildItemStatusKonseling(2),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildItemStatusKonseling(int i) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: AppColor.blue, width: 1.5), borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/mentor1.jpg", width: 60)),
          12.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Zadev. M.Psi., Psikolog",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                4.height,
                const Text("Psikolog", style: TextStyle(fontSize: 12)),
                4.height,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.phone, size: 15, color: AppColor.darkGrey),
                    4.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text("Paket Nyaman",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                          Text(
                            "60 menit konseling dengan psikolog",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                8.height,
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 24,
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(backgroundColor: statusColor[i]),
                      child: Text(statusString[i], style: TextStyle(fontSize: 10),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
