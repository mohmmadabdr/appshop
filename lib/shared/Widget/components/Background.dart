import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Background_GetStart(
  BuildContext context,
  Widget child,
) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          child: Image.asset(
            "assets/images/BackGround.png",
            width: double.infinity,
            height: size.height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            "assets/images/back_3.png",
            width: size.width,
            height: size.width,
            fit: BoxFit.cover,
          ),
        ),
        child
      ],
    ),
  );
}

// ____________________________________
Widget background_anth(
  BuildContext context,
  Widget child,
) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: double.infinity,
    height: size.height,
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset("assets/images/top1.png", width: size.width),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset("assets/images/top2.png", width: size.width),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset("assets/images/bottom1.png", width: size.width),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset("assets/images/bottom2.png", width: size.width),
        ),
        child,
      ],
    ),
  );
}
