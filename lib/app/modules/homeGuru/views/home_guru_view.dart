import 'package:absenku_u_a_s/app/data/model/modelGuru.dart';
import 'package:absenku_u_a_s/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_guru_controller.dart';

class HomeGuruView extends GetView<HomeGuruController> {
  final controller = Get.put(HomeGuruController());
  final _controller = Get.find<HomeGuruController>();
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
                                child:
                                    // Image.asset(
                                    //   'assets/image/fathan.png',
                                    //   width: MediaQuery.of(context).size.width,
                                    //   // height: 100,
                                    //   fit: BoxFit.contain,
                                    // ),
                                    Icon(CupertinoIcons.person,
                                        color: Color(0xffF0EBCE))),
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
                    height: 800,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          width: 370,
                          height: 280,
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
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 7),
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              color: Color(0xffB5172A),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                          ),
                                          Text(
                                            "Sekarang",
                                            style: TextStyle(
                                                color: Color(0xffF0EBCE)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Senin, 31 Oktober 2022',
                                        style:
                                            TextStyle(color: Color(0xffF0EBCE)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 135,
                                decoration: BoxDecoration(
                                    color: Color(0xffF0EBCE),
                                    border: Border.all(width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text(
                                        "08:00 - 09:30",
                                        style: TextStyle(
                                            color: Color(0xff395144),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        "Matematika",
                                        style: TextStyle(
                                            color: Color(0xff395144),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Kelas XI - RPL",
                                        style:
                                            TextStyle(color: Color(0xff395144)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 230,
                                height: 30,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xffF0EBCE),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 2)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: () =>
                                        Get.toNamed(Routes.NAV_BAR2),
                                    child: Text(
                                      "Detail",
                                      style:
                                          TextStyle(color: Color(0xff395144)),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10, top: 60),
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
                                      "Akan Datang",
                                      style: TextStyle(
                                          color: Color(0xff395144),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              StreamBuilder(
                                stream: controller.dataStream(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.green,
                                      ),
                                    );
                                  }
                                  if (controller.data.isEmpty) {
                                    return Center(
                                      child: Text("Tidak ada data"),
                                    );
                                  }

                                  List<Guru> guru = controller.data;

                                  return ListView.builder(
                                      itemCount: guru.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Text(guru[index].namaGuru),
                                          subtitle: Text(guru[index].hari),
                                        );
                                      });
                                },
                              ),
                              Column(
                                  // children: List.generate(_controller., (index) => null)
                                  )
                              // AkanDatang(),
                              // AkanDatang(),
                              // AkanDatang(),
                            ],
                          ),
                        ),
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

Widget AkanDatang() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xFF395144), Color(0xFF4E6C50)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      border: Border.all(width: 2),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "09:30 - 11:00",
                style: TextStyle(color: Color(0xffF0EBCE)),
              ),
              Text(
                "Senin, 31 Oktober 2022",
                style: TextStyle(color: Color(0xffF0EBCE)),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 2,
          decoration: BoxDecoration(color: Color(0xffF0EBCE)),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Matematika",
                style: TextStyle(color: Color(0xffF0EBCE)),
              ),
              Text(
                "Kelas X - TKJ",
                style: TextStyle(color: Color(0xffF0EBCE)),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
