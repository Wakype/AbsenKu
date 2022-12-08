import 'dart:convert';
import 'dart:developer';

import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  final emailTextHint = "Masukkan Email".obs;
  final emailTextLabel = "Email".obs;
  final passwordTextHint = "Masukkan Password".obs;
  final passwordTextLabel = "Password".obs;
  final nameTextHint = "Masukkan Nama".obs;
  final nameTextLabel = "Nama".obs;

  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();

  Future tombolRegister() async {
    log("tombol di pencet");
    Uri url = Uri.parse("http://34.128.70.114/register");

    Map data = {
      "name": name.text,
      "email": email.text,
      "password": password.text,
      "status": "active",
      "jenisKelamin": "laki-laki"
    };

    var body = json.encode(data);

    final response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: body);

    if (response.statusCode == 201) {
      log("berhasil register");
      Get.toNamed(Routes.LOGIN);
    } else {
      log(response.statusCode.toString());
      log(response.body.toString());
      log("gagal register");
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
