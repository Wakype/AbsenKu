import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_kelas_controller.dart';

class DetailKelasView extends GetView<DetailKelasController> {
  final controller = Get.put(DetailKelasController());
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
                                        style:
                                            TextStyle(color: Color(0xffF0EBCE)),
                                        textAlign: TextAlign.left,
                                      ))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Guru MTK",
                                        style:
                                            TextStyle(color: Color(0xffF0EBCE)),
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
                              "Keterangan",
                              style: TextStyle(
                                  color: Color(0xff395144),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF395144), Color(0xFF4E6C50)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        width: double.infinity,
                        height: 80,
                        child: AbsenKeterangan(),
                      ),
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
                              "Guru",
                              style: TextStyle(
                                  color: Color(0xff395144),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

Widget AbsenKeterangan() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.check_mark,
            color: Color(0xff04B800),
          ),
          Text(
            "Hadir",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.xmark,
            color: Color(0xffB5172A),
          ),
          Text(
            "Absen",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CupertinoIcons.plus_rectangle_fill, color: Color(0xff2EAF9A)),
          Text(
            "Sakit",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.doc_plaintext,
            color: Color(0xff3A34ED),
          ),
          Text(
            "Izin",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ],
  );
}

Widget Absen(String nama, String nomor, IconData icon) {
  return Container(
    child: Row(
      children: [Text(nomor), Text(nama), Icon(icon)],
    ),
  );
}
