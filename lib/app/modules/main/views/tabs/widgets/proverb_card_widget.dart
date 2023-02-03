import 'package:flutter/material.dart';

import '../../../../../constant/app_color.dart';

class ProverbCardWidget extends StatelessWidget {
  const ProverbCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Today's Proverb",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColor.black),
            ),
            Container(
              width: 30,
              height: 1.5,
              color: AppColor.black,
              margin: const EdgeInsets.symmetric(vertical: 4),
            ),
            const Text(
              '"Let your story go. Allow yourself to be present with who you are right now.”',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
              textAlign: TextAlign.center,
            ),
            Row(mainAxisSize: MainAxisSize.min, children: const [
              Text(
                '- Russ Kyle',
                style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black, fontSize: 12),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
