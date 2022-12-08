// import 'dart:js';
import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Container(
            height: double.infinity,
            // padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/image/HeaderLogin.png',
                            width: MediaQuery.of(context).size.width,
                            // height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/image/LogoHitam.png',
                            width: 150,
                            // height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 250,
                                    child: Text(
                                      "Silahkan Login menggunakan akun yang sudah diberikan",
                                      style: TextStyle(fontSize: 18),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Form(
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                            // key: controller.formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: controller.email,
                                  style: const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: controller.emailTextLabel.value,
                                    labelStyle: const TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 19,
                                    ),
                                    hintText: controller.emailTextHint.value,
                                    hintStyle: const TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 16.5,
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 18,
                                    ),
                                    suffixIcon: Icon(
                                      Icons.person_outline,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 1),
                                      gapPadding: 10,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Color(0xff395144), width: 2),
                                      gapPadding: 10,
                                    ),
                                    filled: true,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CustomField(
                                    customController: controller.password,
                                    customHint:
                                        controller.passwordTextHint.value,
                                    customLabel:
                                        controller.passwordTextLabel.value),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Align(
                                            child: Container(
                                          child: InkWell(
                                              onTap: () => Get.toNamed(
                                                  Routes.LUPA_PASSWORD),
                                              child: Text("Lupa Password?")),
                                        ))
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 50,
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF395144),
                                                Color(0xFF4E6C50)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(width: 2)),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                          ),
                                          onPressed: () =>
                                              controller.tombolLogin(),
                                          child: Text("LOGIN")),
                                    ),
                                    InkWell(
                                        onTap: () =>
                                            Get.toNamed(Routes.REGISTER),
                                        child: Text("Tidak memiliki akun?"))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   height: 4,
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 30,
                                decoration:
                                    BoxDecoration(border: Border.all(width: 2)),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "Atau",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Container(
                                height: 1,
                                width: 30,
                                decoration:
                                    BoxDecoration(border: Border.all(width: 2)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 172,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/FooterLogin.png'),
                                    fit: BoxFit.contain)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.fingerprint,
                                  color: Color(0xffF0EBCE),
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Login dengan sidik jari",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xffF0EBCE)),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextFormField CustomField({customController, customLabel, customHint}) {
  return TextFormField(
    controller: customController,
    style: const TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Colors.black,
    ),
    // obscureText: _obscureText,
    obscureText: true,
    decoration: InputDecoration(
      labelText: customLabel,
      labelStyle: const TextStyle(
        fontFamily: "Poppins",
        color: Colors.black,
        fontSize: 19,
      ),
      hintText: customHint,
      hintStyle: const TextStyle(
        fontFamily: "Poppins",
        color: Colors.black,
        fontSize: 16.5,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 18,
      ),
      suffixIcon: Icon(
        Icons.remove_red_eye_outlined,
        color: Colors.black,
        size: 20,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.black, width: 1),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0xff395144), width: 2),
        gapPadding: 10,
      ),
      filled: true,
    ),
  );
}
