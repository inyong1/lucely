import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Lucely",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
