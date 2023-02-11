import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/constant/app_color.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../../../routes/app_pages.dart';

class KonselingSlider extends StatefulWidget {
  const KonselingSlider({super.key});

  @override
  State<KonselingSlider> createState() => _KonselingSliderState();
}

class _KonselingSliderState extends State<KonselingSlider> {
  int _pageIndex = 0;
  final tabs = <Widget>[];
  static const conselingOption1 = [
    "Kecemasan",
    "Depresi",
    "Kesepian",
    "Overthingking",
    "Trauma",
    "Sosial",
    "Kepribadian",
    "Keluarga",
    "Emosional",
    "Percintaan",
  ];
  @override
  void initState() {
    super.initState();
    tabs.clear();
    tabs.addAll([
      _buildPageViewChild(),
      _buildPageViewChild(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 144,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            children: tabs,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            tabs.length,
            (index) => TabPageSelectorIndicator(
              backgroundColor: index == _pageIndex ? AppColor.blue : Colors.grey,
              borderColor: Colors.transparent,
              size: 10,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPageViewChild() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          color: AppColor.lightCyan,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:  [
                      const Text(
                        "Tingkatkan",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Text(
                        "Kesejahteraan Mentalmu",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Text(
                        'Yuk, ceritakan permasalahanmu bersama psikolog',
                        style: TextStyle(fontSize: 11),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            minimumSize: const Size(0, 30)
                          ),
                          onPressed: ()async{
                            final result =
                            await _showDialogConselingOpsion(conselingOption1, Get.width);
                            if (result == true) {
                              Get.toNamed(Routes.PILIH_PSIKOLOG);
                            }
                          },
                          child: const Text(
                            "Konseling Dengan Psikolog",
                            style: TextStyle(color: AppColor.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/psikolog.png", width: 80),
              ],
            ),
          )),
    );
  }

  Future<bool?> _showDialogConselingOpsion(List<String> opsion, double screenWidth) async {
    return Get.dialog(AlertDialog(
      scrollable: true,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 500),
          Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColor.darkGrey,
                  borderRadius: BorderRadius.circular(2),
                ),
              )),
          16.height,
          const Center(
            child: Text(
              'Pilih topik konseling',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          16.height,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 16,
            spacing: 20,
            children: List.generate(opsion.length, (index) {
              return InkWell(
                onTap: () => Get.back(result: true),
                child: Container(
                  alignment: Alignment.center,
                  width: (screenWidth - 90 - 20) / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.blue, width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Text(
                    opsion[index],
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ));
  }

}
