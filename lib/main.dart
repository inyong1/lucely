import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lucely/app/app_themes.dart';
import 'package:lucely/app/data/models/user/user_repository_impl.dart';

import 'app/data/appstate_service.dart';
import 'app/data/localdata/local_data_source.dart';
import 'app/data/localdata/local_data_source_impl.dart';
import 'app/data/models/user/user_repository.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await initialize();
  runApp(
    GetMaterialApp(
      title: "Lucely",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemes.light,
      themeMode: ThemeMode.light,
      darkTheme: AppThemes.light,
    ),
  );
}

Future<void> initialize() async {
  await GetStorage.init();
  Get.put<LocalDataSource>(LocalDataSourceImpl(GetStorage()), permanent: true);
  Get.put(AppStateService(localDataSource: Get.find()), permanent: true);
  Get.lazyPut<UserRepository>(() => UserRepositoryImpl(Get.find()), fenix: true);
}
