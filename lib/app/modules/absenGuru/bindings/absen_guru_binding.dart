import 'package:get/get.dart';

import '../controllers/absen_guru_controller.dart';

class AbsenGuruBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbsenGuruController>(
      () => AbsenGuruController(),
    );
  }
}
