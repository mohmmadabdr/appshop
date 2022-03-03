import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../shared/Widget/components/Background.dart';
import '../../shared/Widget/components/botton.dart';
import '../../shared/Widget/constants.dart';

import '../auth/Login/Login_Screen.dart';
import '../auth/Regester/regester_screen.dart';

class GetStart_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      backgroundColor: colorw,
      body: SafeArea(
          child: Background_GetStart(
        context,
        SingleChildScrollView(
          child: Container(
            child: Center(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 52.r,
                            backgroundColor: colorw,
                          ),
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: colorw,
                            backgroundImage: AssetImage(
                              "assets/images/logo_Fack.png",
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          "AppShop",
                          style: TextStyle(
                            color: colorw,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: size * 0.58,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: botton(
                          width: 230.w,
                          colorbotton: colorpreblue,
                          colortext: colorw,
                          title: "Register",
                          onTap: () {
                            Get.to(Regster_Screen());
                          },
                        ),
                      ),
                      botton(
                        width: 230.w,
                        colorbotton: colorpreblueli,
                        colortext: colorw,
                        title: "Login",
                        onTap: () {
                          Get.to(Login_Screen());
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
