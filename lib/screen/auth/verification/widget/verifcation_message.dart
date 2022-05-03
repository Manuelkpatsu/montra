import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class VerificationMessage extends StatelessWidget {
  final String email;

  const VerificationMessage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'We sent a verification code to your email ',
        style: regular1TextStyle.copyWith(color: CustomColor.deepBlackColor),
        children: [
          TextSpan(
            text: '$email. ',
            style:
                regular1TextStyle.copyWith(color: CustomColor.violet100Color),
          ),
          const TextSpan(text: 'You can check your inbox.'),
        ],
      ),
    );
  }
}
