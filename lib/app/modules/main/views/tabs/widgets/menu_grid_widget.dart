import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../../constant/app_color.dart';

class MenuGridWidget extends StatelessWidget {
  const MenuGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 3 / 4,
      ),
      children: [
        _buildItem("assets/icons/cunseling.png", "Konseling"),
        _buildItem("assets/icons/event.png", "Event"),
        _buildItem("assets/icons/luce_guide.png", "LuceGuide"),
        _buildItem("assets/icons/bookluce.png", "Bookluce"),
      ],
    );
  }

  Widget _buildItem(String asset, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            width: min(constraints.maxWidth, 70),
            child: Material(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColor.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(asset),
                  ),
                )),
          );
        }),
        8.height,
        Text(label),
      ],
    );
  }
}
