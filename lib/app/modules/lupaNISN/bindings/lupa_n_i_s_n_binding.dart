import 'package:get/get.dart';

import '../controllers/lupa_n_i_s_n_controller.dart';

class LupaNISNBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LupaNISNController>(
      () => LupaNISNController(),
    );
  }
}
