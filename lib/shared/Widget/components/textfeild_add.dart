import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

Widget defaultFormField({
  required context,
  String? hintText,
  TextEditingController? controller,
  dynamic label,
  IconData? prefix,
  String? initialValue,
  TextInputType? keyboardType,
  Function(String)? onSubmit,
  onChange,
  onTap,
  double borderCirculartl = 0,
  double borderCirculartr = 0,
  double borderCircularbl = 0,
  double borderCircularbr = 0,
  required String? Function(String?) validate,
  required String? Function(String?) onSaved,
  bool isPassword = false,
  IconData? suffix,
  suffixPressed,
  Color? color_fill,
  int? maxLength,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(borderCirculartr),
        bottomLeft: Radius.circular(borderCircularbl),
        bottomRight: Radius.circular(borderCircularbr),
        topLeft: Radius.circular(borderCirculartl),
      ),
      child: TextFormField(
        maxLength: maxLength,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        onTap: onTap,
        onSaved: onSaved,
        validator: validate,
        textCapitalization: TextCapitalization.words,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            prefix,
            color: Colors.grey,
          ),
          counterText: '',
          border: InputBorder.none,
          fillColor: color_fill,
          filled: true,
          suffixIcon: suffix != null
              ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
              : null,
        ),
      ),
    );
