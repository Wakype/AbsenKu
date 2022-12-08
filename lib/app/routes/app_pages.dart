import 'package:get/get.dart';

import 'package:absenku_u_a_s/app/modules/absenGuru/bindings/absen_guru_binding.dart';
import 'package:absenku_u_a_s/app/modules/absenGuru/views/absen_guru_view.dart';
import 'package:absenku_u_a_s/app/modules/detailKelas/bindings/detail_kelas_binding.dart';
import 'package:absenku_u_a_s/app/modules/detailKelas/views/detail_kelas_view.dart';
import 'package:absenku_u_a_s/app/modules/homeGuru/bindings/home_guru_binding.dart';
import 'package:absenku_u_a_s/app/modules/homeGuru/views/home_guru_view.dart';
import 'package:absenku_u_a_s/app/modules/homeMurid/bindings/home_murid_binding.dart';
import 'package:absenku_u_a_s/app/modules/homeMurid/views/home_murid_view.dart';
import 'package:absenku_u_a_s/app/modules/kelas/bindings/kelas_binding.dart';
import 'package:absenku_u_a_s/app/modules/kelas/views/kelas_view.dart';
import 'package:absenku_u_a_s/app/modules/login/bindings/login_binding.dart';
import 'package:absenku_u_a_s/app/modules/login/views/login_view.dart';
import 'package:absenku_u_a_s/app/modules/lupaNISN/bindings/lupa_n_i_s_n_binding.dart';
import 'package:absenku_u_a_s/app/modules/lupaNISN/views/lupa_n_i_s_n_view.dart';
import 'package:absenku_u_a_s/app/modules/lupaPassword/bindings/lupa_password_binding.dart';
import 'package:absenku_u_a_s/app/modules/lupaPassword/views/lupa_password_view.dart';
import 'package:absenku_u_a_s/app/modules/navBar2/bindings/nav_bar2_binding.dart';
import 'package:absenku_u_a_s/app/modules/navBar2/views/nav_bar2_view.dart';
import 'package:absenku_u_a_s/app/modules/navBarTest/bindings/nav_bar_test_binding.dart';
import 'package:absenku_u_a_s/app/modules/navBarTest/views/nav_bar_test_view.dart';
import 'package:absenku_u_a_s/app/modules/newNISN/bindings/new_n_i_s_n_binding.dart';
import 'package:absenku_u_a_s/app/modules/newNISN/views/new_n_i_s_n_view.dart';
import 'package:absenku_u_a_s/app/modules/newPassword/bindings/new_password_binding.dart';
import 'package:absenku_u_a_s/app/modules/newPassword/views/new_password_view.dart';
import 'package:absenku_u_a_s/app/modules/profile/bindings/profile_binding.dart';
import 'package:absenku_u_a_s/app/modules/profile/views/profile_view.dart';
import 'package:absenku_u_a_s/app/modules/register/bindings/register_binding.dart';
import 'package:absenku_u_a_s/app/modules/register/views/register_view.dart';
import 'package:absenku_u_a_s/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:absenku_u_a_s/app/modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_GURU,
      page: () => HomeGuruView(),
      binding: HomeGuruBinding(),
    ),
    GetPage(
      name: _Paths.HOME_MURID,
      page: () => HomeMuridView(),
      binding: HomeMuridBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD,
      page: () => LupaPasswordView(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_N_I_S_N,
      page: () => LupaNISNView(),
      binding: LupaNISNBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NAV_BAR_TEST,
      page: () => NavBarTestView(),
      binding: NavBarTestBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.NEW_N_I_S_N,
      page: () => NewNISNView(),
      binding: NewNISNBinding(),
    ),
    GetPage(
      name: _Paths.KELAS,
      page: () => KelasView(),
      binding: KelasBinding(),
    ),
    GetPage(
      name: _Paths.ABSEN_GURU,
      page: () => AbsenGuruView(),
      binding: AbsenGuruBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_KELAS,
      page: () => DetailKelasView(),
      binding: DetailKelasBinding(),
    ),
    GetPage(
      name: _Paths.NAV_BAR2,
      page: () => NavBar2View(),
      binding: NavBar2Binding(),
    ),
  ];
}
