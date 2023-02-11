import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lucely/app/routes/app_pages.dart';
import 'package:lucely/extensions/num_ext.dart';

import '../../../constant/app_color.dart';
import '../controllers/open_event_controller.dart';

class OpenEventView extends StatefulWidget {
  const OpenEventView({Key? key}) : super(key: key);

  @override
  State<OpenEventView> createState() => _OpenEventViewState();
}

class _OpenEventViewState extends State<OpenEventView> {
  final _mainContentKey = GlobalKey();
  final _overlayCardLayerLink = LayerLink();
  OverlayEntry? _overlayCardEntry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _showOverlayCard();
    });
  }

  @override
  void dispose() {
    _removeOverlayCard();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: controller.headerBacgroundColorObs.value,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                // controller: controller.scrollController,
                slivers: [
                  SliverAppBar(
                    // stretch: true,
                    // centerTitle: true,
                    // title: Text(controller.titleObs.value),
                    backgroundColor: AppColor.white,
                    leading: InkResponse(
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.chevron_left,
                          size: 32,
                          color: AppColor.white,
                        )),
                    // backgroundColor: controller.headerBacgroundColorObs.value,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background: Image.asset(
                        "assets/images/event3b.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    expandedHeight: 300,
                    // pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: CompositedTransformTarget(
                      link: _overlayCardLayerLink,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32, top: 100, right: 20, bottom: 32),
                        child: Column(
                          key: _mainContentKey,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Tentang Event",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            8.height,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 60,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            8.height,
                            const Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book... "),
                                TextSpan(
                                    text: "Baca selengkapnya",
                                    style: TextStyle(fontWeight: FontWeight.bold))
                              ]),
                            ),
                            16.height,
                            const Text(
                              "Manfaat",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            8.height,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 60,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            8.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Sertifikat gratis untuk peserta'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Networking'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Knowledge'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Doorprize'),
                              ],
                            ),
                            16.height,
                            const Text(
                              "Pembicara",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            8.height,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 60,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            8.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Agus M Psi'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Drs Bambang'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Ketua Umum'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Bintang tamu'),
                              ],
                            ),
                            16.height,
                            const Text(
                              "Apa yang akan didapat",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            8.height,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 60,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: AppColor.blue, borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            8.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Mindfullness'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Afirmasi positif'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Perbedaan impian dan goals'),
                              ],
                            ),
                            4.height,
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    width: 5,
                                    height: 5,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: AppColor.black)),
                                const Text('Praktik metode productivity'),
                              ],
                            ),
                            4.height,
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: AppColor.white,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16, top: 16),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.blue),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.send, color: AppColor.blue, size: 18),
                  ),
                  10.width,
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.blue),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.bookmark, color: AppColor.blue, size: 18),
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                          height: 32,
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () async {
                                _removeOverlayCard();
                                await Get.toNamed(Routes.DAFTAR_EVENT);
                                _showOverlayCard();
                              },
                              child: const Text('Daftar Event'))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showOverlayCard() {
    _overlayCardEntry = OverlayEntry(builder: _buildOverlayCardContent);
    OverlayState overlayState = Overlay.of(context);
    overlayState.insert(_overlayCardEntry!);
  }

  Widget _buildOverlayCardContent(BuildContext context) {
    return Positioned(
      width: context.width - 40,
      child: CompositedTransformFollower(
        link: _overlayCardLayerLink,
        offset: const Offset(20, -50),
        showWhenUnlinked: false,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      height: 24,
                      child: FilledButton(onPressed: () {}, child: const Text('Webinar'))),
                ),
                8.height,
                const Text(
                  "Menciptakan Mindfullness Dalam Akademik",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                8.height,
                Row(
                  children: [
                    const Icon(Icons.calendar_month, size: 14, color: Colors.amber),
                    4.width,
                    const Text('Rabu, 27 Februari 2023', style: TextStyle(fontSize: 10)),
                    24.width,
                    const Icon(Icons.access_time_outlined, size: 14, color: Colors.blue),
                    4.width,
                    const Text('14:00 - 15:30', style: TextStyle(fontSize: 10)),
                  ],
                ),
                8.height,
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, size: 14, color: Colors.red),
                    4.width,
                    const Text('Rabu, 27 Februari 2023', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _removeOverlayCard() {
    _overlayCardEntry?.remove();
    _overlayCardEntry = null;
  }
}
