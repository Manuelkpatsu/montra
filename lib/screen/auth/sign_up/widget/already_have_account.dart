import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const AlreadyHaveAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Already have an account? ',
        style: regular2TextStyle.copyWith(color: CustomColor.lightColor),
        children: [
          WidgetSpan(
            child: InkWell(
              onTap: onTap,
              child: Text(
                'Login',
                style: regular2TextStyle.copyWith(
                  color: CustomColor.violet100Color,
                  decoration: TextDecoration.underline,
                  decorationColor: CustomColor.violet100Color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
