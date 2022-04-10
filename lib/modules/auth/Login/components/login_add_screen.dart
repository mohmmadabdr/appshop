import 'package:appshop/shared/Widget/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/Widget/components/textfeild_add.dart';
import '../../../../core/Auth/Authcontroller.dart';

class Login_Add_TextFeild extends StatelessWidget {
  var loginFormKey = GlobalKey<FormState>();
  final Auth_controller Controller = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'Email Address',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: colorpreblue,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: defaultFormField(
            prefix: Icons.email_outlined,
            context: context,
            onSaved: (value) {
              Controller.email = value;
            },
            keyboardType: TextInputType.emailAddress,
            validate: (value) {
              if (value!.isEmpty) return 'Email Address must be filled';
            },
            color_fill: colorgrey,
            borderCirculartl: 5.0.r,
            borderCircularbl: 5.0.r,
            borderCircularbr: 5.0.r,
            borderCirculartr: 5.0.r,
          ),
        ),
        // SizedBox(height: size.height * 0.03),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
          child: Text(
            'Password',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: colorpreblue,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: defaultFormField(
            prefix: Icons.lock,
            context: context,
            onSaved: (value) {
              Controller.password = value;
            },
            borderCirculartl: 5.0.r,
            borderCircularbl: 5.0.r,
            borderCircularbr: 5.0.r,
            borderCirculartr: 5.0.r,
            color_fill: colorgrey,
            isPassword: true,
            validate: (value) {
              if (value!.isEmpty) return 'Password must be filled';
            },
            //  isPassword: !LoginCubit.get(context).passwordobscureText
            //               ? true
            //               : false,
            //           validate: (value) {
            //             if (value!.isEmpty) return 'Password must be filled';
            //           },
            //           suffix: LoginCubit.get(context).suffixIcon,
            //           suffixPressed: () {
            //             LoginCubit.get(context).changeSuffixIcon(context);
            //           },
            //           color_fill: Colors.grey[100],
            //           onSubmit: (value) {
            //             if (loginFormKey.currentState!.validate()) {
            //               cubit.userLogin(
            //                 email: emailcontroller.text,
            //                 password: passwordcontroller.text,
            //               );
            //             }
            //           },
          ),
        ),
      ],
    );
  }
}
