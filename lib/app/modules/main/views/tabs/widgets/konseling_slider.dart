import 'package:flutter/material.dart';
import 'package:lucely/app/constant/app_color.dart';

class KonselingSlider extends StatefulWidget {
  const KonselingSlider({super.key});

  @override
  State<KonselingSlider> createState() => _KonselingSliderState();
}

class _KonselingSliderState extends State<KonselingSlider> {
  int _pageIndex = 0;
  final tabs = <Widget>[];

  @override
  void initState() {
    super.initState();
    tabs.clear();
    tabs.addAll([
      _buildPageViewChild(),
      _buildPageViewChild(),
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
                          onPressed: (){},
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
}
