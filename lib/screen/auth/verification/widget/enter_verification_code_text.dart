import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class EnterVerificationCodeText extends StatelessWidget {
  const EnterVerificationCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter Your Verification Code',
      style: title1TextStyle.copyWith(
        color: CustomColor.dark100Color,
        fontSize: 36,
        fontWeight: FontWeight.w500,
        height: 1.22,
      ),
    );
  }
}
