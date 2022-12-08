import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;

import 'package:get/get.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';

import '../controllers/absen_guru_controller.dart';

class AbsenGuruView extends GetView<AbsenGuruController> {
  String? selectedValue;
  String? dropdownValue;
  // List<String> items = [
  //   'Hadir',
  //   'Absen',
  //   'Sakit',
  //   'Izin',
  // ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AbsenGuruController());
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
                          // margin: EdgeInsets.only(top: 30),
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IntrinsicWidth(
                                  child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Absen Harian Siswa",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF395144)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Kelas XI - RPL",
                                      style: TextStyle(
                                          color: Color(0xFF395144),
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              )),
                              Icon(
                                Icons.more_horiz,
                                color: Color(0xFF395144),
                                size: 25,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: CalendarCarousel(
                            weekendTextStyle: TextStyle(
                              color: Color(0xFFB5172A),
                            ),
                            iconColor: Color(0xFF395144),
                            weekdayTextStyle: TextStyle(
                              color: Color(0xFF395144),
                              fontWeight: FontWeight.w700,
                            ),

                            daysTextStyle: TextStyle(
                              color: Color(0xFF395144),
                            ),
                            headerTextStyle: TextStyle(
                                color: Color(0xFF395144),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            todayBorderColor: Color(0xFF395144),
                            todayButtonColor: Color(0xFF395144),
                            thisMonthDayBorderColor: Colors.grey,
                            // customDayBuilder: (
                            //   bool isSelectable,
                            //   int index,
                            //   bool isSelectedDay,
                            //   bool isToday,
                            //   bool isPrevMonthDay,
                            //   TextStyle textStyle,
                            //   bool isNextMonthDay,
                            //   bool isThisMonthDay,
                            //   DateTime day,
                            // ) {
                            //   if (day.day == 15) {
                            //     return Center(
                            //       child: Icon(Icons.local_airport),
                            //     );
                            //   } else {
                            //     return null;
                            //   }
                            // },
                            weekFormat: false,
                            // markedDatesMap: _markedDateMap,
                            height: 350,
                            // selectedDateTime: _currentDate,
                            // daysHaveCircularBorder: true,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
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
                          child: AbsenInfo("Matematika", "90 Menit", "Fathan"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF395144),
                                        Color(0xFF4E6C50)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  border: Border.all(width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                ),
                                width: double.infinity,
                                height: 80,
                                child: AbsenKeterangan(),
                              ),
                            ],
                          ),
                        ),
                        Container(
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                    Text(
                                      "Pilih",
                                      style: TextStyle(
                                          color: Color(0xff395144),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              // Container(
                              //   height: 50,
                              //   width: MediaQuery.of(context).size.width,
                              //   margin: EdgeInsets.all(20),
                              //   child: DropdownButtonHideUnderline(
                              //     child: GFDropdown(
                              //       padding: const EdgeInsets.all(15),
                              //       borderRadius: BorderRadius.circular(10),
                              //       border: const BorderSide(
                              //           color: Colors.black12, width: 1),
                              //       dropdownButtonColor: Colors.grey[300],
                              //       value: dropdownValue,
                              //       onChanged: (newValue) {
                              //         // setState(() {
                              //         //   dropdownValue = newValue;
                              //         // });
                              //         controller.dropDown(newValue);
                              //       },
                              //       items: controller.items
                              //           // return DropdownMenuItem
                              //           .map((value) => DropdownMenuItem(
                              //                 value: value,
                              //                 child: Text(value),
                              //               ))
                              //           .toList(),
                              //     ),
                              //   ),
                              // ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
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
                                    onPressed: () => Get.toNamed(Routes.KELAS),
                                    child: Text(
                                      "Mulai Kegiatan Belajar",
                                      style: TextStyle(fontFamily: "poppins"),
                                    )),
                              ),
                            ],
                          ),
                        )
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

Widget AbsenInfo(String pelajaran, String waktu, String guru) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pelajaran",
            style: TextStyle(color: Color(0xffAA8B56), fontSize: 13),
          ),
          Text(
            pelajaran,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Waktu",
            style: TextStyle(color: Color(0xffAA8B56), fontSize: 13),
          ),
          Text(
            waktu,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Guru",
            style: TextStyle(color: Color(0xffAA8B56), fontSize: 13),
          ),
          Text(
            guru,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ],
  );
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
