import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class VerificationText extends StatelessWidget {
  const VerificationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Verification',
      style: title3TextStyle.copyWith(color: CustomColor.blackColor),
    );
  }
}
