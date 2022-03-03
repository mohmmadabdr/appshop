import 'package:appshop/modules/Settings/Components/botton_profile.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Components/botton_list_Settings.dart';
import 'Components/downispage.dart';

class Settings_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: colorpreblue, fontSize: 18.sp),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            botton_porfile(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Divider(
                height: 10.h,
                color: colorb,
                indent: 10,
              ),
            ),
            list_vew_botton(),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: downispage(),
            ),
          ],
        ),
      ),
    );
  }
}
