import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_n_i_s_n_controller.dart';

class NewNISNView extends GetView<NewNISNController> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: GetBuilder<NewNISNController>(
        builder: (controller) => Container(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
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
                                  "New NISN",
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
                                  width: 200,
                                  child: Text(
                                    "Silahkan masukkan NISN baru",
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
                              SizedBox(
                                height: height * 0.03,
                              ),
                              TextFormField(
                                // controller: _password,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                // obscureText: _obscureText,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "NISN",
                                  labelStyle: const TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontSize: 19,
                                  ),
                                  hintText: "Masukkan NISN",
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
                                    Icons.numbers,
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
                                height: 30,
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
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 2)),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        onPressed: () =>
                                            Get.toNamed(Routes.LOGIN),
                                        child: Text("RESET NISN")),
                                  ),
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
                SizedBox(
                  height: 150,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 172,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/image/FooterLogin.png'),
                                fit: BoxFit.contain)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
