import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../routes/app_pages.dart';
import 'indikator_view.dart';

class Intro3View extends StatelessWidget {
  const Intro3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/menjadi_lebih_bik.png"),
              21.height,
              Text(
                'Menjadi Lebih Baik',
                style: context.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              ),
              8.height,
              const Text(
                'Dapatkan inspirasi dengan diskusi langsung\ndari para psikolog dan life mentor\nexperts yang terpecaya',
                textAlign: TextAlign.center,
              ),
              50.height,
              const IndikatorView(count: 3, activeIndex: 2),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(36),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () =>Get.toNamed(Routes.REGISTER),
                  child: const Text('Buat Akun'),
                ),
                OutlinedButton(
                  onPressed: () =>Get.toNamed(Routes.LOGIN),
                  child: const Text('Masuk'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
