import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kelas_controller.dart';

class KelasView extends GetView<KelasController> {
  final controller = Get.put(KelasController());
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    // width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 45,
                              height: 45,
                              child: Image.asset(
                                'assets/image/fathan.png',
                                width: MediaQuery.of(context).size.width,
                                // height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: IntrinsicWidth(
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            child: Text(
                                          "Fathan Al - Farazi",
                                          style: TextStyle(
                                              color: Color(0xffF0EBCE)),
                                          textAlign: TextAlign.left,
                                        ))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Guru MTK",
                                          style: TextStyle(
                                              color: Color(0xffF0EBCE)),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Icon(
                            Icons.notifications,
                            color: Color(0xffF0EBCE),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 25),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 7),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xff395144),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                              Text(
                                "Kelas",
                                style: TextStyle(
                                    color: Color(0xff395144),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Kelas("X - RPL"),
                        Kelas("X - TKJ"),
                        Kelas("XI - RPL"),
                        Kelas("XI - TKJ"),
                        Kelas("XII - RPL"),
                        Kelas("XII - TKJ"),
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

Widget Kelas(String kelas) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    width: double.infinity,
    height: 120,
    decoration: BoxDecoration(
        color: Color(0xff395144),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            kelas,
            style: TextStyle(
                color: Color(0xffF0EBCE),
                fontSize: 25,
                fontFamily: "poppins",
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 30,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: Color(0xffF0EBCE),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () => Get.toNamed(Routes.DETAIL_KELAS),
              child: Text(
                "Detail",
                style: TextStyle(color: Color(0xff395144)),
              )),
        ),
      ],
    ),
  );
}
