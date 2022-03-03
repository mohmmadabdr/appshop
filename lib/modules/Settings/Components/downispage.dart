import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/Widget/constants.dart';
import '../../GetStart/GetStart_Screen.dart';

Widget downispage() {
  return Row(
    children: [
      Text(
        'Version : 1.0',
        style: TextStyle(color: colorpreblue, fontSize: 14.sp),
      ),
      Spacer(),
      Row(
        children: [
          Text(
            'Logout',
            style: TextStyle(color: colorpreblue, fontSize: 14.sp),
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: colorpreblue,
              size: 25,
            ),
            onPressed: () {
              Controller.siginup(GetStart_Screen());
            },
          ),
        ],
      ),
    ],
  );
}
