import 'package:get/get.dart';

import '../modules/editakun/bindings/editakun_binding.dart';
import '../modules/editakun/views/editakun_view.dart';
import '../modules/faq/bindings/faq_binding.dart';
import '../modules/faq/views/faq_view.dart';
import '../modules/gantisandi/bindings/gantisandi_binding.dart';
import '../modules/gantisandi/views/gantisandi_view.dart';
import '../modules/intro/bindings/intro_binding.dart';
import '../modules/intro/views/intro_view.dart';
import '../modules/kontak_admin/bindings/kontak_admin_binding.dart';
import '../modules/kontak_admin/views/kontak_admin_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/middleware/home_middleware.dart';
import '../modules/main/views/main_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/tentang_app/bindings/tentang_app_binding.dart';
import '../modules/tentang_app/views/tentang_app_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
      middlewares: [
        MainMiddleware(
          appStateService: Get.find(),
          userRepository: Get.find(),
          localDataSource: Get.find(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      // middlewares: [
      //   LoginMiddleware(appStateService: Get.find()),
      // ],
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.EDITAKUN,
      page: () => EditakunView(),
      binding: EditakunBinding(),
    ),
    GetPage(
      name: _Paths.GANTISANDI,
      page: () => GantisandiView(),
      binding: GantisandiBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => const FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.TENTANG_APP,
      page: () => TentangAppView(),
      binding: TentangAppBinding(),
    ),
    GetPage(
      name: _Paths.KONTAK_ADMIN,
      page: () => const KontakAdminView(),
      binding: KontakAdminBinding(),
    ),
  ];
}
