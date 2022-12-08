import 'dart:convert';
import 'dart:developer';

import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailTextHint = "Masukkan Email".obs;
  final emailTextLabel = "Email".obs;
  final passwordTextHint = "Masukkan Password".obs;
  final passwordTextLabel = "Password".obs;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future tombolLogin() async {
    log("tombol di pencet");
    Uri url = Uri.parse("http://34.128.70.114/login");

    Map data = {"email": email.text, "password": password.text};

    var body = json.encode(data);

    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 200) {
      log("berhasil login");
      Get.toNamed(Routes.HOME_GURU);
      // Redirect ke dashboard / homepage
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal login");
      // munculkan pesan error
    }
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
