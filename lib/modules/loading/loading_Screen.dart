import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/Widget/constants.dart';
import '../../shared/screen_move/screen_move.dart';

class Loading_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 90,
      splash: "assets/images/logo_Fack.png",
      nextScreen: InitializerWidget(),
    );
  }
}
