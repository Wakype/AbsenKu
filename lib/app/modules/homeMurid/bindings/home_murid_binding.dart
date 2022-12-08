import 'package:get/get.dart';

import '../controllers/home_murid_controller.dart';

class HomeMuridBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeMuridController>(
      () => HomeMuridController(),
    );
  }
}
