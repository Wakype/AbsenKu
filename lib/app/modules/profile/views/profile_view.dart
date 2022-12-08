import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF395144), Color(0xFF4E6C50)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent.withOpacity(0),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      '• PROFILE',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'poppins'),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 280,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(
                    color: Color(0xffF0EBCE),
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileHeader(context, 'assets/image/fathan2.png',
                        "Fathan Al - Farazi", "026301739273"),
                    ProfileHeader(context, 'assets/image/profesi.png',
                        "Profesi", "Guru Matematika"),
                    ProfileHeader(context, 'assets/image/sekolah.png',
                        "Sekolah", "SMK Madinatul Qur'an"),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                // margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomButton("Change Photo Profile", 0xff395144, null),
                        CustomButton("Change Password", 0xff395144, null),
                        CustomButton("Change Email", 0xff395144, null),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 60),
                        child:
                            CustomButton("Log Out", 0xffB5172A, Routes.LOGIN)),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

Widget ProfileHeader(
    BuildContext context, String imageAsset, String title, String subtitle) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(right: 25),
        width: 55,
        height: 55,
        child: Image.asset(
          // 'assets/image/fathan2.png',
          imageAsset,
          width: MediaQuery.of(context).size.width,
          // height: 100,
          fit: BoxFit.contain,
        ),
      ),
      IntrinsicWidth(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                // "Fathan Al - Farazi",
                title,
                style: TextStyle(
                    color: Color(0xff395144),
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                // "026301739273",
                subtitle,
                style: TextStyle(
                    color: Color(0xff395144),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget CustomButton(String text, int warna, ontap) {
  return InkWell(
    onTap: () => Get.toNamed(ontap),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Color(warna),
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Color(0xffF0EBCE)),
        ),
      ),
    ),
  );
}
