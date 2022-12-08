import 'dart:convert';
import 'dart:developer';

import 'package:absenku_u_a_s/app/data/model/modelGuru.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeGuruController extends GetxController {
  var guruList = <DataGuru>[].obs;
  var isLoading = true.obs;

  Future getGuru() async {
    String url = "https://teal-perfect-wasp.cyclic.app/hilmi";
    Uri urlData = Uri.parse(url);

    final response = await http.get(urlData);

    if (response.statusCode == 200) {
      // List<DataGuru> data =
      //     dataGuruFromJson(response.body.toString());

      // DataGuru _dataGuru = DataGuru.fromJson(jsonDecode(response.body));
      DataGuru data = DataGuru.fromJson(jsonDecode(response.body));

      // guruList.add(DataGuru(
      //     status: _dataGuru.status,
      //     message: _dataGuru.message,
      //     data: _dataGuru.data));

      // isLoading.value = false;
      // update();

      print('Berhasil get guru');
      log("berhasil guru");
      log(data.data.toString());
      return data.data;
    } else {
      // Get.snackbar('Error loading data!',
      //     'Server responded: ${response.statusCode}: ${response.reasonPhrase.toString()} ');
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal guru");
      print('Gagal get guru');
      return [];
    }
  }

  List<Guru> data = [];

  _getData() {
    getGuru().then((value) {
      if (value != false) {
        print(value);
        data = value;
        update();
      }
    });
  }

  Stream dataStream() async* {
    _getData();
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getGuru();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
