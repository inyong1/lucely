import 'package:flutter/material.dart';

import '../../../../constant/app_color.dart';

class MenuGridWidget extends StatelessWidget {
  const MenuGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 24,childAspectRatio: 3/4),
      children: [
        _buildItem("assets/icons/cunseling.png", "label"),
        _buildItem("assets/icons/cunseling.png", "label"),
        _buildItem("assets/icons/cunseling.png", "label"),
        _buildItem("assets/icons/cunseling.png", "label"),
      ],
    );
  }

  Widget _buildItem(String asset, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 60,
          child: Material(
            clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColor.blue, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(asset),
                ),
              )),
        ),
        Text(label),
      ],
    );
  }
}
