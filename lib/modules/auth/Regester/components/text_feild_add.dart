import 'package:appshop/core/Auth/Authcontroller.dart';
import 'package:appshop/shared/Widget/components/botton.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/Widget/components/textfeild_add.dart';
import '../../code_vefi/code_vefi_screen.dart';

class Text_Feild_Add extends StatelessWidget {
  final Auth_controller loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
              ),
              child: Text(
                "First Name",
                style: TextStyle(
                  color: colorpreblue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            defaultFormField(
              keyboardType: TextInputType.name,
              prefix: Icons.person_outlined,
              borderCircularbl: 5.0.r,
              borderCircularbr: 5.0.r,
              borderCirculartr: 5.0.r,
              borderCirculartl: 5.0.r,
              color_fill: colorgrey,
              onSaved: (value) {
                loginController.firstname = value;
              },
              context: context,
              validate: (value) {
                if (value!.isEmpty) return 'First Name must be filled';
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  "Last Name",
                  style: TextStyle(
                    color: colorpreblue,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              defaultFormField(
                keyboardType: TextInputType.name,
                prefix: Icons.person_outlined,
                borderCircularbl: 5.0.r,
                borderCircularbr: 5.0.r,
                borderCirculartr: 5.0.r,
                borderCirculartl: 5.0.r,
                color_fill: colorgrey,
                onSaved: (value) {
                  loginController.lastname = value;
                },
                context: context,
                validate: (value) {
                  if (value!.isEmpty) return 'Last Name must be filled';
                },
              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 5, bottom: 5),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(
        //           bottom: 5,
        //         ),
        //         child: Text(
        //           "phone Numbre",
        //           style: TextStyle(
        //             color: colorpreblue,
        //             fontSize: 14,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       defaultFormField(
        //         hintText: " +9627******** ",
        //         maxLength: 13,
        //         prefix: Icons.phone_android_outlined,
        //         borderCircularbl: 5.0,
        //         borderCircularbr: 5.0,
        //         borderCirculartr: 5.0,
        //         borderCirculartl: 5.0,
        //         color_fill: colorgrey,
        //         onSaved: (value) {
        //           loginController.phone = value;
        //         },
        //         context: context,
        //         validate: (value) {
        //           if (value!.isEmpty) return 'Phone must be filled';
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  "Email Address",
                  style: TextStyle(
                    color: colorpreblue,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              defaultFormField(
                keyboardType: TextInputType.emailAddress,
                prefix: Icons.email_outlined,
                borderCircularbl: 5.0.r,
                borderCircularbr: 5.0.r,
                borderCirculartr: 5.0.r,
                borderCirculartl: 5.0.r,
                color_fill: colorgrey,
                onSaved: (value) {
                  loginController.email = value;
                },
                context: context,
                validate: (value) {
                  if (value!.isEmpty) return 'Email Adress must be filled';
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: colorpreblue,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              defaultFormField(
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                prefix: Icons.lock_outline,
                borderCircularbl: 5.0.r,
                borderCircularbr: 5.0.r,
                borderCirculartr: 5.0.r,
                borderCirculartl: 5.0.r,
                color_fill: colorgrey,
                onSaved: (value) {
                  loginController.password = value;
                },
                context: context,
                validate: (value) {
                  if (value!.isEmpty) return 'Email Adress must be filled';
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: botton(
            onTap: () {
              formkey_Regester.currentState?.save();
              if (formkey_Regester.currentState!.validate()) {
                loginController.createAccountWithEmailAndPassword();
                // loginController.verificationPhone();
                // Get.to(VerificationCode_Screen());
              }
            },
            width: double.infinity,
            colorbotton: colorpreblue,
            colortext: colorw,
            title: "Register",
          ),
        ),
      ],
    );
  }
}
