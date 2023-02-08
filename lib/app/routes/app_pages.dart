import 'package:get/get.dart';

import '../modules/bookluce/bindings/bookluce_binding.dart';
import '../modules/bookluce/views/bookluce_view.dart';
import '../modules/detail_transaksi/bindings/detail_transaksi_binding.dart';
import '../modules/detail_transaksi/views/detail_transaksi_view.dart';
import '../modules/editakun/bindings/editakun_binding.dart';
import '../modules/editakun/views/editakun_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/views/event_view.dart';
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
import '../modules/luce_guide/bindings/luce_guide_binding.dart';
import '../modules/luce_guide/views/luce_guide_view.dart';
import '../modules/luceguide_index/bindings/luceguide_index_binding.dart';
import '../modules/luceguide_index/views/luceguide_index_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/middleware/home_middleware.dart';
import '../modules/main/views/main_view.dart';
import '../modules/mentor_detail/bindings/mentor_detail_binding.dart';
import '../modules/mentor_detail/views/mentor_detail_view.dart';
import '../modules/menunggu_pembayaran/bindings/menunggu_pembayaran_binding.dart';
import '../modules/menunggu_pembayaran/views/menunggu_pembayaran_view.dart';
import '../modules/metode_pembayaran/bindings/metode_pembayaran_binding.dart';
import '../modules/metode_pembayaran/views/metode_pembayaran_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/open_luceguide/bindings/open_luceguide_binding.dart';
import '../modules/open_luceguide/views/open_luceguide_view.dart';
import '../modules/pilih_mentor/bindings/pilih_mentor_binding.dart';
import '../modules/pilih_mentor/views/pilih_mentor_view.dart';
import '../modules/pilih_psikolog/bindings/pilih_psikolog_binding.dart';
import '../modules/pilih_psikolog/views/pilih_psikolog_view.dart';
import '../modules/pilih_tanggal/bindings/pilih_tanggal_binding.dart';
import '../modules/pilih_tanggal/views/pilih_tanggal_view.dart';
import '../modules/psikolog_detail/bindings/psikolog_detail_binding.dart';
import '../modules/psikolog_detail/views/psikolog_detail_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/status_pembayaran/bindings/status_pembayaran_binding.dart';
import '../modules/status_pembayaran/views/status_pembayaran_view.dart';
import '../modules/tentang_app/bindings/tentang_app_binding.dart';
import '../modules/tentang_app/views/tentang_app_view.dart';
import '../modules/voucher_konseling/bindings/voucher_konseling_binding.dart';
import '../modules/voucher_konseling/views/voucher_konseling_view.dart';

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
    GetPage(
      name: _Paths.PILIH_PSIKOLOG,
      page: () => const PilihPsikologView(),
      binding: PilihPsikologBinding(),
    ),
    GetPage(
      name: _Paths.PILIH_MENTOR,
      page: () => const PilihMentorView(),
      binding: PilihMentorBinding(),
    ),
    GetPage(
      name: _Paths.PSIKOLOG_DETAIL,
      page: () => const PsikologDetailView(),
      binding: PsikologDetailBinding(),
    ),
    GetPage(
      name: _Paths.MENTOR_DETAIL,
      page: () => const MentorDetailView(),
      binding: MentorDetailBinding(),
    ),
    GetPage(
      name: _Paths.PILIH_TANGGAL,
      page: () => const PilihTanggalView(),
      binding: PilihTanggalBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_TRANSAKSI,
      page: () => const DetailTransaksiView(),
      binding: DetailTransaksiBinding(),
    ),
    GetPage(
      name: _Paths.VOUCHER_KONSELING,
      page: () => const VoucherKonselingView(),
      binding: VoucherKonselingBinding(),
    ),
    GetPage(
      name: _Paths.METODE_PEMBAYARAN,
      page: () => const MetodePembayaranView(),
      binding: MetodePembayaranBinding(),
    ),
    GetPage(
      name: _Paths.MENUNGGU_PEMBAYARAN,
      page: () => const MenungguPembayaranView(),
      binding: MenungguPembayaranBinding(),
    ),
    GetPage(
      name: _Paths.STATUS_PEMBAYARAN,
      page: () => const StatusPembayaranView(),
      binding: StatusPembayaranBinding(),
    ),
    GetPage(
      name: _Paths.LUCE_GUIDE,
      page: () => const LuceGuideView(),
      binding: LuceGuideBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => const EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.BOOKLUCE,
      page: () => const BookluceView(),
      binding: BookluceBinding(),
    ),
    GetPage(
      name: _Paths.LUCEGUIDE_INDEX,
      page: () => const LuceguideIndexView(),
      binding: LuceguideIndexBinding(),
    ),
    GetPage(
      name: _Paths.OPEN_LUCEGUIDE,
      page: () => const OpenLuceguideView(),
      binding: OpenLuceguideBinding(),
    ),
  ];
}
