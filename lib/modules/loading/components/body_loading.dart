import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/cupertino.dart';

Widget Body_Loading(AnimationController? animationcontroller,
    Animation<double>? fadeanimation) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FadeTransition(
        opacity: fadeanimation!,
        child: Center(
          child: Text(
            "AppShop",
            style: TextStyle(
              color: colorw,
              fontSize: 32,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage("assets/images/logo_Fack.png"),
            ),
          ),
        ),
      ),
    ],
  );
}
