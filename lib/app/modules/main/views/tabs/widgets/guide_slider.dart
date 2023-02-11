import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/routes/app_pages.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../../constant/app_color.dart';

class GuideSlider extends StatelessWidget {
  const GuideSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "LuceGuide",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Spacer(),
              InkWell(
                onTap: () => Get.toNamed(Routes.LUCE_GUIDE),
                child: const Text('Lihat semua',
                    style: TextStyle(
                        color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              '''Dengarkan inspirasi dan self-help mandiri untuk jade lebih baik menjalani hari'''),
        ),
        12.height,
        SizedBox(
          height: 140,
          child: LayoutBuilder(builder: (context, constraint) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              children: [
                _buildGuideItem(context, constraint, AppColor.lemonChiffon),
                _buildGuideItem(context, constraint, AppColor.greenLight),
                _buildGuideItem(context, constraint, AppColor.lightCyan),
                _buildGuideItem(context, constraint, AppColor.pigPink),
              ],
            );
          }),
        ),
      ],
    );
  }

  Widget _buildGuideItem(BuildContext context, BoxConstraints constraints, Color color) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      alignment: Alignment.centerLeft,
      width: constraints.maxWidth - 50,
      child: Container(
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28, left: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Megatasi Kesepian",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Text('6 Sesi singkat')
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/images/anxiety.png", width: 110))
          ],
        ),
      ),
    );
  }
}
