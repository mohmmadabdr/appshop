import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widget/constants.dart';

ThemeData lightMode() => ThemeData(
      scaffoldBackgroundColor: colorw,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: colorw,
          statusBarIconBrightness: Brightness.dark,
        ),
        iconTheme: IconThemeData(color: colorpreblue),
        elevation: 0.0,
        backgroundColor: colorw,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorpreblue,
          elevation: 0.0,
          backgroundColor: colorw),
      fontFamily: 'jannah',
    );
