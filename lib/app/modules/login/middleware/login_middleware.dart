import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely/app/data/appstate_service.dart';
import 'package:lucely/app/routes/app_pages.dart';

class LoginMiddleware extends GetMiddleware {
  final AppStateService appStateService;

  LoginMiddleware({required this.appStateService});

  @override
  RouteSettings? redirect(String? route) {
    if (appStateService.isFirstRun) return const RouteSettings(name: Routes.INTRO);
    return super.redirect(route);
  }
}
