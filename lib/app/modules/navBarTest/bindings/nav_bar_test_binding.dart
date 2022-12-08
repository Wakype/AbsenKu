import 'package:get/get.dart';

import '../controllers/nav_bar_test_controller.dart';

class NavBarTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarTestController>(
      () => NavBarTestController(),
    );
  }
}
