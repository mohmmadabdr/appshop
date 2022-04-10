import 'package:appshop/modules/home/home_screen.dart';
import 'package:appshop/shared/Widget/components/botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../shared/Widget/components/Background.dart';
import '../../../shared/Widget/constants.dart';
import '../../../core/Auth/Authcontroller.dart';
import 'components/login_add_screen.dart';

class Login_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: background_anth(
        context,
        SingleChildScrollView(
          child: Form(
            key: formkey_log,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: colorpreblue,
                          ),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: colorpreblue,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            "Welcome to Login in AppShop ",
                            maxLines: 2,
                            style: TextStyle(
                              color: colorpreblue,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Login_Add_TextFeild(),
                        Row(
                          children: [
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  color: colorpreblue,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        botton(
                          onTap: () {
                            formkey_log.currentState?.save();
                            if (formkey_log.currentState!.validate()) {
                              Controller.signInWithEmailAndPassword();
                            } else {
                              print("Not Validated");
                            }
                          },
                          title: "Login",
                          colortext: colorw,
                          colorbotton: colorpreblue,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Center(
                            child: Text(
                              "- OR -",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: colorpreblue,
                              ),
                            ),
                          ),
                        ),
                        botton_Auth(
                          onTap: () {
                            // Controller.googleSignInMethod();
                          },
                          title: "Google",
                          colortext: colorw,
                          colorbotton: colorpreblueli,
                          width: double.infinity,
                          image_1: Image.asset("assets/images/google.png"),
                        ),
                        // botton_Auth(
                        //   onTap: () {
                        //     // Controller.facebookSignInMethod();
                        //   },
                        //   title: "Facebook",
                        //   colortext: colorw,
                        //   colorbotton: colorpreblueli,
                        //   width: double.infinity,
                        //   image_1: Image.asset("assets/images/facebook.png"),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
