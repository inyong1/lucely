import 'package:flutter/material.dart';

class BottomSheetPilihPaket extends StatelessWidget {
  const BottomSheetPilihPaket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 200),
      padding: const EdgeInsets.all(20),
      child: Text('pilih paket'),
    );
  }
}
