import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password',
      style: title3TextStyle.copyWith(color: CustomColor.blackColor),
    );
  }
}
