import 'package:get/get.dart';

import '../mentor.dart';

class PilihMentorController extends GetxController {
  static const _psikologListFull = [
    Mentor("Mentor Ganteng", "psikolog1.jpg"),
    Mentor("Supriyadi", "psikolog2.jpg"),
    Mentor("Zadev", "psikolog3.jpg"),
    Mentor("Muhammad Zaenal", "psikolog1.jpg"),
    Mentor("Hasan", "psikolog2.jpg"),
    Mentor("Bagus", "psikolog3.jpg"),
    Mentor("Aminah", "psikolog1.jpg"),
  ];

  final mentorListObs = <Mentor>[].obs;
  final filterObs = "".obs;

  Worker? _filterWorker;

  @override
  void onInit() {
    super.onInit();
    _filterWorker = debounce(filterObs, (callback) {
      applyFilter();
    }, time: 100.milliseconds);
    applyFilter();
  }

  @override
  void dispose() {
    _filterWorker?.dispose();
    super.dispose();
  }

  void applyFilter() {
    mentorListObs.value = _psikologListFull
        .where((element) => element.name.toLowerCase().contains(filterObs.value.toLowerCase()))
        .toList();
  }
}