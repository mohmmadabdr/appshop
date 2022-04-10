import 'package:appshop/core/Auth/Authcontroller.dart';
import 'package:appshop/core/Auth/home_viewmodel.dart';
import 'package:appshop/shared/screen_move/screen_move.dart';
import 'package:appshop/shared/theme/Theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'modules/loading/loading_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginController = Get.put(Auth_controller());
  final HomeController = Get.put(HomeViewModel());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppShop',
        theme: lightMode(),
        home: Loading_Screen(),
      ),
    );
  }
}
