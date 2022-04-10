import 'package:appshop/shared/Widget/components/botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/Widget/constants.dart';
import '../../../core/Auth/Authcontroller.dart';
import 'components/pin_code.dart';

class VerificationCode_Screen extends StatelessWidget {
  final Auth_controller loginController = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
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
                      "Verification Code",
                      style: TextStyle(
                        fontSize: 24,
                        color: colorpreblue,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage("assets/images/done_1.png"),
                    height: 150,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    "Enter Verification Code",
                    style: TextStyle(color: colorpreblue, fontSize: 20),
                  ),
                ),
                Bin_Code(),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text("Resend the code to the phone"))
                  ],
                ),
                botton(
                  onTap: () {
                    // loginController.verfiyotp(PinCodecontroller.text);
                  },
                  title: "Done",
                  colorbotton: colorpreblue,
                  colortext: colorw,
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
