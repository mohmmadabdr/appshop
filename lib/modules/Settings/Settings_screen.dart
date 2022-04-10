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
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: botton_porfile(),
            ),
            list_vew_botton(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: downispage(),
            ),
          ],
        ),
      ),
    );
  }
}
