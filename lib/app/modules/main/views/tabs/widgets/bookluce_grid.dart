import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../../routes/app_pages.dart';

class BookluceGrid extends StatelessWidget {
  const BookluceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        8.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children:  [
                  const Expanded(
                      child:
                          Text("Bookluce Terbaru", style: TextStyle(fontWeight: FontWeight.bold))),
                  InkWell(
                      onTap:()=> Get.toNamed(Routes.BOOKLUCE),
                      child: const Text('Lihat semua', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
                ],
              ),
              const Text("Baca ringkasan buku best seller internasional",
                  style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            children: [
              _buildItemBook("assets/images/book4.png"),
              _buildItemBook("assets/images/book1.png"),
              _buildItemBook("assets/images/book3.png"),
              _buildItemBook("assets/images/book2.png"),
              _buildItemBook("assets/images/book4.png"),
              _buildItemBook("assets/images/book1.png"),
              _buildItemBook("assets/images/book3.png"),
              _buildItemBook("assets/images/book2.png"),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildItemBook(String assetImage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        child: Image.asset(assetImage, width: 90, fit: BoxFit.fill),
      ),
    );
  }
}
