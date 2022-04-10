import 'package:appshop/modules/GetStart/GetStart_Screen.dart';
import 'package:appshop/modules/auth/Login/Login_Screen.dart';
import 'package:appshop/modules/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/Auth/Authcontroller.dart';

class InitializerWidget extends StatefulWidget {
  @override
  _InitializerWidgetState createState() => _InitializerWidgetState();
}

class _InitializerWidgetState extends State<InitializerWidget> {
  FirebaseAuth? _auth;
  final Auth_controller Controller = Get.find();
  User? _user;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth?.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : _user == null
            ? GetStart_Screen()
            : Home_Screen();
  }
}
