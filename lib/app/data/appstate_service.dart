import 'dart:convert';

import 'package:get/get.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';
import 'package:lucely/app/data/models/user/user_repository.dart';

import '../routes/app_pages.dart';
import 'models/user/user.dart';

class AppStateService extends GetxService {
  final LocalDataSource localDataSource;
  final UserRepository userRepository;

  final userObs = Rxn<User>();

  AppStateService({required this.localDataSource, required this.userRepository});

  bool get isFirstRun {
    return localDataSource.readBool(LocalDataSource.KEY_IS_FIRST_RUN);
  }

  void logout() async {
    await userRepository.logout();
    Get.offAllNamed(Routes.LOGIN);
  }
}
