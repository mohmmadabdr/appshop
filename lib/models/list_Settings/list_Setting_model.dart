import 'package:appshop/modules/GetStart/GetStart_Screen.dart';
import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/material.dart';
import '../../modules/Settings/Settings_screen.dart';

class MenuItem_Settings {
  IconData? icon;
  String? title;
  Widget? onTap;
  String? Desc;
  Color? ColorBack;
  MenuItem_Settings(
    this.icon,
    this.title,
    this.onTap,
    this.Desc,
    this.ColorBack,
  );
}

List menu_Setting = <MenuItem_Settings>[
  MenuItem_Settings(
    Icons.person,
    'Profite',
    null,
    "dfsdfsdfsdf",
    colorpreblue,
  ),
  MenuItem_Settings(
    Icons.notifications,
    'Notifications',
    Settings_Screen(),
    "hdfngjfdgbkdjfg",
    Colors.orangeAccent,
  ),
  MenuItem_Settings(
    Icons.receipt_long,
    'Order',
    null,
    "",
    Colors.redAccent,
  ),
  MenuItem_Settings(
    Icons.bug_report,
    'Report',
    null,
    "",
    Colors.greenAccent,
  ),
  MenuItem_Settings(
    Icons.gps_fixed,
    'Location',
    null,
    "",
    colorpreblue,
  ),
];
