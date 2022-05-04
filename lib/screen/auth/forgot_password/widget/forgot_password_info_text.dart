import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class ForgotPasswordInfoText extends StatelessWidget {
  const ForgotPasswordInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Don\'t worry.\nEnter your email and we\'ll send you a link to reset your password.',
      style: title2TextStyle.copyWith(color: CustomColor.dark100Color),
    );
  }
}
