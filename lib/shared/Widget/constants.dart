import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../core/Auth/controller.dart';

Color colorpreblue = Color.fromARGB(255, 0, 99, 212);
Color colorpreblueli = Color.fromARGB(255, 135, 168, 211);
Color colorw = Color.fromARGB(255, 255, 255, 255);
Color colorb = Color.fromARGB(255, 0, 0, 0);
Color colorgrey = Color.fromARGB(255, 206, 204, 204);
TextEditingController PinCodecontroller = TextEditingController();
GlobalKey<FormState> formkey_Regester = GlobalKey<FormState>();
GlobalKey<FormState> formkey_log = GlobalKey<FormState>();
GlobalKey<FormState> formkey_code = GlobalKey<FormState>();
final Auth_controller Controller = Get.find();
final zoomDrawerController = ZoomDrawerController();
