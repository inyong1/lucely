import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/modules/intro/views/indikator_view.dart';
import 'package:lucely/extensions/num_ext.dart';

class Intro1View extends StatelessWidget {
  const Intro1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/progress_flatline.png"),
          21.height,
          Text('Upgrade Diri',
              style: context.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
          8.height,
          const Text(
            'Meningkatkan diri dengan membaca intisari buku-buku terbaik dalam waktu kurang dari 20 menit',
            textAlign: TextAlign.center,
          ),
          50.height,
          const IndikatorView(count: 3, activeIndex: 0),
        ],
      ),
    );
  }
}
