import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/menunggu_pembayaran_controller.dart';

class MenungguPembayaranView extends GetView<MenungguPembayaranController> {
  const MenungguPembayaranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menunggu Pembayaran'),
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
              const Center(
                child: Text("Selesaikan pembayaran dalam", style: TextStyle(fontSize: 12)),
              ),
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColor.lightCyan, borderRadius: BorderRadius.circular(6)),
                    child: const Text("23",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  const Text(" : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColor.lightCyan, borderRadius: BorderRadius.circular(6)),
                    child: const Text("50",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  const Text(" : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: AppColor.lightCyan, borderRadius: BorderRadius.circular(6)),
                    child: const Text("55",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                ],
              ),
              24.height,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: AppColor.lightGrey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/bri.png", width: 20),
                          16.width,
                          const Text('BRI'),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            "Nomor Virtual Account",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text("97917414719419419", style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            "ID Pesanan",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text("LCIPSKI G-13414-GH", style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const Divider(thickness: 1),
                    Row(
                      children: [
                        16.width,
                        const Text("Total Pembayaran", style: TextStyle(fontWeight: FontWeight.bold)),
                        const Spacer(),
                        const Text('RP105.000'),
                        16.width,
                      ],
                    ),
                    16.height,
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
          child: ElevatedButton(
              onPressed: () async {
                Get.toNamed(Routes.STATUS_PEMBAYARAN);
              },
              child: const Text('Lihat Status Pembayaran')),
        ),
      ]),
    );
  }
}
