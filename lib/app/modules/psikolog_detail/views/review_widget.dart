import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        children: [
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
          16.width,
          _buildItemReview(context),
        ],
      ),
    );
  }

  Widget _buildItemReview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 0.75 * context.width,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(13),
      ),
      child: const Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text:
                    "Konseling dilakukan via gmeet, psikolog dilza membantu saya dengan memberikan beberapa metode. Penyampaiannya... "),
            TextSpan(text: "Lihat Lebih Banyak", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
