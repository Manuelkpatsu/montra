import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class TermsPolicyText extends StatelessWidget {
  final VoidCallback? onTap;

  const TermsPolicyText({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        text: TextSpan(
          style: regular3TextStyle.copyWith(color: Colors.black),
          children: <TextSpan>[
            const TextSpan(text: 'By signing up, you agree to the '),
            TextSpan(
              text: 'Terms of Service and Privacy Policy',
              style: regular3TextStyle.copyWith(
                color: CustomColor.violet100Color,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
