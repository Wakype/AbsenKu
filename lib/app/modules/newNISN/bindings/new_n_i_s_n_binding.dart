import 'package:get/get.dart';

import '../controllers/new_n_i_s_n_controller.dart';

class NewNISNBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewNISNController>(
      () => NewNISNController(),
    );
  }
}
