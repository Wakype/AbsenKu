import 'package:get/get.dart';

class AbsenGuruController extends GetxController {
  final List<String> items = ['Hadir', 'Absen', 'Sakit', 'Izin'];

  String? dropdownValue;

  void dropDown(newValue) {
    dropdownValue = newValue;
    update();
  }

  final count = 0.obs;
  @override
  void onInit() {
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
