import 'package:flutter/material.dart';
import 'package:lucely/extensions/num_ext.dart';

class KonselingView extends StatelessWidget {
  const KonselingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Konseling",
              style: TextStyle(fontWeight: FontWeight.bold)),
          18.height,
        ],
      ),
    ));
  }
}
