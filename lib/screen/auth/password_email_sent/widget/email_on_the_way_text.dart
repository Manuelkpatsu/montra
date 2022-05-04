import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class EmailOnTheWayText extends StatelessWidget {
  const EmailOnTheWayText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your email is on the way',
      textAlign: TextAlign.center,
      style: title2TextStyle.copyWith(color: CustomColor.dark100Color),
    );
  }
}
