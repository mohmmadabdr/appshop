import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:appshop/modules/loading/components/body_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../shared/Widget/constants.dart';
import '../../shared/screen_move/screen_move.dart';

class Loading_Screen extends StatefulWidget {
  @override
  State<Loading_Screen> createState() => _Loading_ScreenState();
}

class _Loading_ScreenState extends State<Loading_Screen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadeanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadeanimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController!);
    animationController?.repeat(reverse: true);
    DoNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorpreblue,
      body: Body_Loading(animationController!, fadeanimation!),
    );
  }

  void DoNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => InitializerWidget(), transition: Transition.fade);
    });
  }
}
