import 'package:flutter/material.dart';

import '../../../../constant/app_color.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          "Hi, Zadev",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
        ),
        Text('Yuk ceritakan isi hatimu, temukan jalan keluar atas permasalahanmu.'),
      ],
    );
  }
}
