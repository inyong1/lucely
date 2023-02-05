import 'package:get/get.dart';
import 'package:lucely/app/modules/pilih_psikolog/psikolog.dart';

class PilihPsikologController extends GetxController {
  static const _psikologListFull = [
    Psikolog("Psikolog Ganteng", "psikolog1.jpg"),
    Psikolog("Supriyadi Psikolog", "psikolog2.jpg"),
    Psikolog("Zadev, M.psi., Psikolog", "psikolog3.jpg"),
    Psikolog("Muhammad Zaenal", "psikolog1.jpg"),
    Psikolog("Hasan Psi., Psikolog", "psikolog2.jpg"),
    Psikolog("Bagus Psikolog", "psikolog3.jpg"),
    Psikolog("Aminah Psikolog", "psikolog1.jpg"),
  ];

  final psikologListObs = <Psikolog>[].obs;
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
    psikologListObs.value = _psikologListFull
        .where((element) => element.name.toLowerCase().contains(filterObs.value.toLowerCase()))
        .toList();
  }
}
