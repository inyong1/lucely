import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import 'indikator_view.dart';

class Intro2View extends StatelessWidget {
  const Intro2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/reading_a_book_flatline.png"),
          21.height,
          Text(
            'Shelf-help',
            style: context.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
          ),
          8.height,
          const Text(
            'Dengarkan inspirasi untuk kesejahteraan mental\nyang lebih baik dalam menjalani hari',
            textAlign: TextAlign.center,
          ),
          50.height,
          const IndikatorView(count: 3,activeIndex: 1),
        ],
      ),
    );
  }
}
