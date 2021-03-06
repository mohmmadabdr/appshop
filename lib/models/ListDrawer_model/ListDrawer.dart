import 'package:flutter/material.dart';

import '../../modules/Settings/Settings_screen.dart';

class MenuItem {
  IconData? icon;
  String? title;
  Widget? ontap;
  MenuItem(
    this.icon,
    this.title,
    this.ontap,
  );
}

List menu = <MenuItem>[
  MenuItem(Icons.favorite_outlined, 'Favorites', Settings_Screen()),
  MenuItem(Icons.person, 'Profite', Settings_Screen()),
  MenuItem(Icons.settings, 'Settings', Settings_Screen()),
  MenuItem(Icons.notifications, 'Notifications', Settings_Screen()),
  MenuItem(Icons.error_outline_outlined, 'About us', Settings_Screen()),
];
