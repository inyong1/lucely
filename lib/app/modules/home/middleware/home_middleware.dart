import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lucely/app/data/localdata/local_data_source.dart';
import 'package:lucely/app/data/models/user/user_repository.dart';

import '../../../data/appstate_service.dart';
import '../../../routes/app_pages.dart';

class HomeMiddleware extends GetMiddleware {
  final LocalDataSource localDataSource;
  final UserRepository userRepository;

  HomeMiddleware({required this.userRepository, required this.localDataSource});

  @override
  RouteSettings? redirect(String? route) {
    if (localDataSource.readBool(LocalDataSource.KEY_IS_FIRST_RUN)) {
      return const RouteSettings(name: Routes.INTRO);
    }

    if (userRepository.getCurrentUser() == null) {
      return RouteSettings(name: Routes.LOGIN, arguments: Get.arguments);
    }
    return super.redirect(route);
  }

  @override
  Widget onPageBuilt(Widget page) {
    if (localDataSource.readBool(LocalDataSource.KEY_IS_FIRST_RUN)) {
      localDataSource.writeBool(key: LocalDataSource.KEY_IS_FIRST_RUN, value: false);
    }
    return super.onPageBuilt(page);
  }
}
