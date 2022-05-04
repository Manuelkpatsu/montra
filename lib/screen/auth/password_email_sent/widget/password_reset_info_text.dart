import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class PasswordResetInfoText extends StatelessWidget {
  final String email;

  const PasswordResetInfoText({Key? key, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Check your email $email and follow the instructions to reset your password',
      textAlign: TextAlign.center,
      style: regular1TextStyle.copyWith(color: CustomColor.deepBlackColor),
    );
  }
}
