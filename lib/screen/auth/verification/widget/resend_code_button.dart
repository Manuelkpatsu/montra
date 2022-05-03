import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class ResendCodeButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ResendCodeButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        'Didn\'t receive the code? Send again.',
        style: regular1TextStyle.copyWith(
          color: CustomColor.violet100Color,
          decoration: TextDecoration.underline,
          decorationColor: CustomColor.violet100Color,
        ),
      ),
    );
  }
}
