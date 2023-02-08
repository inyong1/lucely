import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/bookluce_controller.dart';

class BookluceView extends GetView<BookluceController> {
  const BookluceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookluce'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        20.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Intisari buku pilihan sesuai topik favoritmu",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              16.height,
              SizedBox(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "cari topik buku",
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: const Icon(Icons.search, size: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Kecemasan'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Everthingking'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Pendidikan'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Stress'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Keluarga'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Self-Development'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Self-love'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                  Chip(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text('Productivity'),
                    backgroundColor: Colors.transparent,
                    side: BorderSide(),
                  ),
                ],
              ),
              16.height,
              LayoutBuilder(builder: (context, constraints) {
                const spacing = 16.0;
                final itemWidth = (constraints.maxWidth - 2 * spacing) / 3 - 1;
                return Wrap(
                  spacing: spacing,
                  runSpacing: 16,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    _buildBookItem(
                      title: "Dear Tomorrow",
                      creator: "Maudy Ayunda",
                      image: "book2.png",
                      maxWidth: itemWidth,
                    ),
                    _buildBookItem(
                      title: "Eat That Frog",
                      creator: "Brian Tracy",
                      image: "book3.png",
                      maxWidth: itemWidth,
                    ),
                    _buildBookItem(
                      title: "The Midnight Library",
                      creator: "Matt Hagg",
                      image: "midnight_library.png",
                      maxWidth: itemWidth,
                    ),
                    _buildBookItem(
                      title: "Good Vibes, Good Life",
                      creator: "Vex King",
                      image: "book4.png",
                      maxWidth: itemWidth,
                    ),
                    _buildBookItem(
                      title: "The Art of Thinking Clearly",
                      creator: "olf Dobelli",
                      image: "art.png",
                      maxWidth: itemWidth,
                    ),
                    _buildBookItem(
                      title: "How to Win Friends & Influence People",
                      creator: "Dale Carnegie",
                      image: "winfriend.png",
                      maxWidth: itemWidth,
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildBookItem(
      {required String title,
      required String creator,
      required String image,
      double maxWidth = 0}) {
    return Container(
      width: maxWidth,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/$image", fit: BoxFit.cover)),
              4.height,
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Text(
                creator,
                style: const TextStyle(fontSize: 11),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Material(
              clipBehavior: Clip.antiAlias,
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => Get.toNamed(
                        Routes.LUCEBOOK_INDEX,
                        arguments: {"title": title, "creator": creator, "image": image},
                      ),
                  child: SizedBox(width: maxWidth, height: maxWidth * 2)),
            ),
          )
        ],
      ),
    );
  }
}
