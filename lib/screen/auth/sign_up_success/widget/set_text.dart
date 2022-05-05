import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class SetText extends StatelessWidget {
  const SetText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'You are set',
      style: title2TextStyle.copyWith(
        color: CustomColor.blackColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
