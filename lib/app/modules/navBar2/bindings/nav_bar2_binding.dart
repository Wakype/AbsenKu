import 'package:get/get.dart';

import '../controllers/nav_bar2_controller.dart';

class NavBar2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBar2Controller>(
      () => NavBar2Controller(),
    );
  }
}
