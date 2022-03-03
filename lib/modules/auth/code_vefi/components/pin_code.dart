import 'package:appshop/shared/Widget/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Bin_Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged: (value) {},
      controller: PinCodecontroller,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
      ),
    );
  }
}
