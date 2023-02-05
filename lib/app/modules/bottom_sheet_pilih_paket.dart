import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../constant/app_color.dart';
import '../routes/app_pages.dart';

class BottomSheetPilihPaket extends StatefulWidget {
  const BottomSheetPilihPaket({super.key});

  @override
  State<BottomSheetPilihPaket> createState() => _BottomSheetPilihPaketState();
}

class _BottomSheetPilihPaketState extends State<BottomSheetPilihPaket> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 200),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          16.height,
          Center(
            child: Container(
              height: 5,
              width: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(3), color: AppColor.darkGrey),
            ),
          ),
          36.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Paket apa yang ingin kamu pilih untuk konseling?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                16.height,
                Row(
                  children: [
                    Expanded(child: _buildPaketNyaman()),
                    12.width,
                    Expanded(child: _buildPaketBahagia()),
                  ],
                ),
                16.height,
                ElevatedButton(
                  onPressed: () async {
                    Get.back();
                    Future.microtask(() => Get.toNamed(Routes.PILIH_TANGGAL));
                  },
                  child: const Text('Pilih Paket'),
                ),
              ],
            ),
          ),
          20.height,
        ],
      ),
    );
  }

  Widget _buildPaketNyaman() {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: selected == 0 ? AppColor.blue : Colors.transparent, width: 1.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => setState(() {
          selected = 0;
        }),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Chip(
                label: Text(
                  'Paket Nayaman',
                  style:
                      TextStyle(fontSize: 12, color: AppColor.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Color(0xffFFD384),
              ),
              const Center(
                child: Text(
                  "Rp150.000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              8.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.check, size: 15),
                  8.width,
                  const Expanded(
                    child: Text("Durasi per sesi 60 menit", style: TextStyle(fontSize: 11)),
                  )
                ],
              ),
              8.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.check, size: 15),
                  8.width,
                  const Expanded(
                    child: Text("Voice Call (via WhatsApp) atau Video Call (via Google Meet)",
                        style: TextStyle(fontSize: 11)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaketBahagia() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: selected == 1 ? AppColor.blue : Colors.transparent, width: 1.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => setState(() {
          selected = 1;
        }),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Chip(
                label: Text(
                  'Paket Bahagia',
                  style:
                      TextStyle(fontSize: 12, color: AppColor.white, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Color(0xffC3F2A6),
              ),
              const Center(
                child: Text(
                  "Rp250.000",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              8.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.check, size: 15),
                  8.width,
                  const Expanded(
                    child: Text("Durasi per sesi 120 menit", style: TextStyle(fontSize: 11)),
                  )
                ],
              ),
              8.height,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.check, size: 15),
                  8.width,
                  const Expanded(
                    child: Text("Voice Call (via WhatsApp) atau Video Call (via Google Meet)",
                        style: TextStyle(fontSize: 11)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
