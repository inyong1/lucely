import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../routes/app_pages.dart';

class KonselingView extends StatelessWidget {
  const KonselingView({super.key});

  static const conselingOption1 = [
    "Kecemasan",
    "Depresi",
    "Kesepian",
    "Overthingking",
    "Trauma",
    "Sosial",
    "Kepribadian",
    "Keluarga",
    "Emosional",
    "Percintaan",
  ];

  static const conselingOption2 = [
    "Kecemasan",
    "Career Path",
    "Pengembangan Diri",
    "Pendidikan",
    "Wawancara",
    "Productivity",
    "Management Hidup",
    "Impostor Syndrome",
    "Skills",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pilih yang tepat untukmu'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            const Divider(thickness: 1, height: 2),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Temukan konselor yang tepat, yuk!",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    18.height,
                    _buildCard(
                      "assets/images/psikolog.png",
                      "Psikolog",
                      "Kesehatan mentalmu adalah prioritas utama",
                      () async {
                        final result =
                            await _showDialogConselingOpsion(conselingOption1, Get.width);
                        if (result == true) {
                          Get.toNamed(Routes.PILIH_PSIKOLOG);
                        }
                      },
                    ),
                    20.height,
                    _buildCard(
                      "assets/images/mentor.png",
                      "Mentor",
                      "Jadi versi terbaik dirimu dan sukses meraih impian",
                      () async {
                        final result =
                            await _showDialogConselingOpsion(conselingOption2, Get.width);
                        if (result == true) {
                          Get.toNamed(Routes.PILIH_MENTOR);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  _buildCard(String assetsImage, String title, String subtitle, VoidCallback onClick) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColor.blue),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(assetsImage),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Text(subtitle, style: const TextStyle(fontSize: 12)),
              20.height,
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    height: 28,
                    child: FilledButton(
                      onPressed: onClick,
                      child: const Text("Mulai Konseling", style: TextStyle(fontSize: 12)),
                    )),
              )
            ],
          ))
        ],
      ),
    );
  }

  Future<bool?> _showDialogConselingOpsion(List<String> opsion, double screenWidth) async {
    return Get.dialog(AlertDialog(
      scrollable: true,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 500),
          Center(
              child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColor.darkGrey,
              borderRadius: BorderRadius.circular(2),
            ),
          )),
          16.height,
          const Center(
            child: Text(
              'Pilih topik konseling',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          16.height,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 16,
            spacing: 20,
            children: List.generate(opsion.length, (index) {
              return InkWell(
                onTap: () => Get.back(result: true),
                child: Container(
                  alignment: Alignment.center,
                  width: (screenWidth - 90 - 20) / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.blue, width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text(
                    opsion[index],
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ));
  }
}
