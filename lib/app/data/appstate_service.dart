import 'dart:convert';

import 'package:get/get.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';

import 'models/user/user.dart';

class AppStateService extends GetxService {
  final LocalDataSource localDataSource;

  final userObs = Rxn<User>();

  AppStateService({required this.localDataSource});

  bool get isFirstRun{
    return localDataSource.readBool(LocalDataSource.KEY_IS_FIRST_RUN);
  }


}
