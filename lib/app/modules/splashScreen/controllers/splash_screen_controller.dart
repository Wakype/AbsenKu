import 'dart:async';
import 'dart:developer';
import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  startSplashScreen() {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      log("pindah");
      Get.toNamed(Routes.LOGIN);
    });
  }

  final count = 0.obs;
  @override
  void onInit() {
    startSplashScreen();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

