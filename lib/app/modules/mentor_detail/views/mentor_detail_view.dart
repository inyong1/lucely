import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../../bottom_sheet_pilih_paket.dart';
import '../../psikolog_detail/views/review_widget.dart';
import '../controllers/mentor_detail_controller.dart';

class MentorDetailView extends GetView<MentorDetailController> {
  const MentorDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Mentor'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading:
            InkResponse(onTap: () => Get.back(), child: const Icon(Icons.chevron_left, size: 28)),
      ),
      body: Column(children: [
        const Divider(height: 2, color: AppColor.darkGrey),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 20),
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/mentor1.jpg"), fit: BoxFit.fill),
                      border: Border.all(width: 1.5, color: AppColor.blue),
                      borderRadius: BorderRadius.circular(13)),
                  width: 140,
                  height: 140,
                ),
              ),
              16.height,
              const Center(
                child: Text(
                  "Jesee Choi",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: const Text(
                    'COO Reku, (Rekeningku)',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              8.height,
              const Center(
                child: Text(
                  "Self Development, Management,\nEducation, +3 lainnya",
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ),
              16.height,
              const Divider(thickness: 1.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildLabel("Profile Zadev"),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildBlueSign(),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.security_update_good, color: AppColor.darkGrey),
                    8.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text("Pendidikan",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('S2 Harvard University'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text:
                              "Dilza seorang psikolog klinis lulusan Harvard. Dilza memiliki ketertarikan dalam menanggani kasus seperti kecemasan, depresi, pengembangan diri, dan keluarga. Dilza percaya bahwa mengontrol untuk selalu berpikiran positif mampu menjalani hidup dengan baik... "),
                      TextSpan(
                          text: "Baca selengkapnya", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildLabel("Jadwal Terdekat"),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildBlueSign(),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    TabPageSelectorIndicator(
                        backgroundColor: Colors.black, borderColor: Colors.transparent, size: 4),
                    Text(' Sabtu, 8 Okt 2022 | 19:00 WIB'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    TabPageSelectorIndicator(
                        backgroundColor: Colors.black, borderColor: Colors.transparent, size: 4),
                    Text(' Minggu, 9 Okt 2022 | 19:00 WIB'),
                  ],
                ),
              ),
              20.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildLabel("Review Psikolog Zadev"),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: _buildBlueSign(),
              ),
              8.height,
              const ReviewWidget(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 3),
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(const BottomSheetPilihPaket(),
                    backgroundColor: AppColor.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(13))));
              },
              child: const Text('Pilih Mentor')),
        ),
      ]),
    );
  }

  Widget _buildBlueSign() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 50,
        height: 10,
        decoration: BoxDecoration(
          color: AppColor.blue,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Widget _buildLabel(String s) {
    return Text(s, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16));
  }
}
