import 'package:absenku_u_a_s/app/modules/absenGuru/views/absen_guru_view.dart';
import 'package:absenku_u_a_s/app/modules/kelas/views/kelas_view.dart';
import 'package:absenku_u_a_s/app/modules/profile/views/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../controllers/nav_bar2_controller.dart';

class NavBar2View extends GetView<NavBar2Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Container(child: GetBuilder<NavBar2Controller>(builder: (controller) {
      return Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            IndexedStack(
              index: controller.tabIndex,
              children: [
                AbsenGuruView(),
                KelasView(),
                ProfileView(),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    // color: Color(0xffAA8B56),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: GNav(
                      duration: Duration(milliseconds: 300),
                      backgroundColor: Color(0xffAA8B56),
                      hoverColor: Color(0xFF395144),
                      tabBorderRadius: 12,
                      tabMargin:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      // gap: 5,
                      color: Colors.black,
                      activeColor: Colors.white,
                      tabActiveBorder: Border.all(width: 2),
                      iconSize: 20,
                      tabBackgroundColor: Color(0xFF395144),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      curve: Curves.bounceInOut,
                      onTabChange: controller.changeTabIndex,
                      selectedIndex: controller.tabIndex,
                      tabs: [
                        _customGButton(icon: CupertinoIcons.home),
                        _customGButton(icon: CupertinoIcons.calendar),
                        _customGButton(icon: CupertinoIcons.person_crop_circle),
                      ],
                    )),
              ),
            ),
          ],
        ),
      );
    })));
  }
}

_customGButton({required IconData icon}) {
  return GButton(icon: icon);
}
