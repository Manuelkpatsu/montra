import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class CreateNewAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const CreateNewAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Don\'t have an account yet? ',
        style: regular1TextStyle.copyWith(color: CustomColor.lightColor),
        children: [
          WidgetSpan(
            child: InkWell(
              onTap: onTap,
              child: Text(
                'Sign Up',
                style: regular1TextStyle.copyWith(
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
