import 'package:appshop/modules/home/components/nav_bot.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../core/Auth/controller.dart';
import '../../shared/Widget/constants.dart';
import '../GetStart/GetStart_Screen.dart';
import 'components/cou_side.dart';
import 'components/gro_car_prod.dart';
import 'components/menu_drawer.dart';
import 'components/search_cart.dart';
import 'components/up_page.appbar.dart';

class Home_Screen extends StatelessWidget {
  final Auth_controller loginController = Get.find();
  var auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Menu_Drawer(),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Controller.siginup(GetStart_Screen());
      //   },
      //   child: Icon(
      //     Icons.logout,
      //     color: colorw,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                App_Bar(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    "Top Today",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Cou_Slide(),
                Search_Cart(),
                Categories(),
                gru_car_prod(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
