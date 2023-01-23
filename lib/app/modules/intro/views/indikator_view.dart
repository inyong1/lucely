import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndikatorView extends StatelessWidget {
  const IndikatorView({super.key, this.activeIndex = 0, required this.count});

  final int activeIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) => _buildItem(context, index == activeIndex)),
    );
  }

  Widget _buildItem(BuildContext context, bool aktif) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: aktif ? context.theme.primaryColor : Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: context.theme.primaryColor)
      ),
    );
  }
}
