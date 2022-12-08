import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          body: Obx(
        () => Container(
          // padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/HeaderLogin.png',
                    width: MediaQuery.of(context).size.width,
                    // height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
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
                              "Silahkan buat akun untuk dapat masuk ke aplikasi ini",
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
                        CustomField(
                            customController: controller.name,
                            obscure: false,
                            customKeyboardType: TextInputType.name,
                            customIcon: CupertinoIcons.person,
                            customHint: controller.nameTextHint.value,
                            customLabel: controller.nameTextLabel.value),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomField(
                            customController: controller.email,
                            obscure: false,
                            customKeyboardType: TextInputType.emailAddress,
                            customIcon: CupertinoIcons.mail,
                            customHint: controller.emailTextHint.value,
                            customLabel: controller.emailTextLabel.value),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomField(
                            customController: controller.password,
                            obscure: true,
                            customKeyboardType: TextInputType.text,
                            customIcon: Icons.password,
                            customHint: controller.nameTextHint.value,
                            customLabel: controller.nameTextLabel.value),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 350,
                              height: 50,
                              margin: EdgeInsets.only(bottom: 10, top: 10),
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
                                  onPressed: () => controller.tombolRegister(),
                                  child: Text("REGISTER")),
                            ),
                            InkWell(
                                onTap: () => Get.toNamed(Routes.LOGIN),
                                child: Text("Sudah ada akun?"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 172,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/FooterLogin.png'),
                          fit: BoxFit.contain)),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    required this.svgIcon,
    Key? key,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0,
        20,
        20,
        20,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: 21,
        color: Colors.black,
      ),
    );
  }
}

TextFormField CustomField(
    {customController,
    customLabel,
    customHint,
    customKeyboardType,
    customIcon,
    obscure}) {
  return TextFormField(
    obscureText: obscure,
    // keyboardType: TextInputType.number,
    keyboardType: customKeyboardType,
    controller: customController,
    style: const TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      color: Colors.black,
    ),
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
        customIcon,
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
