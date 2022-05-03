import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class ForgotPassword extends StatelessWidget {
  final VoidCallback? onPressed;

  const ForgotPassword({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Forgot Password?',
        style: title3TextStyle.copyWith(
          color: CustomColor.violet100Color,
          decoration: TextDecoration.underline,
          decorationColor: CustomColor.violet100Color,
        ),
      ),
    );
  }
}
