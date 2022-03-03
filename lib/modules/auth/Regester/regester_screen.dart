import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/Widget/components/Background.dart';
import '../../../shared/Widget/constants.dart';
import 'components/text_feild_add.dart';

class Regster_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: background_anth(
        context,
        SingleChildScrollView(
          child: Form(
            key: formkey_Regester,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Register",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: colorpreblue,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Welcome to Register in AppShop",
                      maxLines: 2,
                      style: TextStyle(
                        color: colorpreblue,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text_Feild_Add(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
