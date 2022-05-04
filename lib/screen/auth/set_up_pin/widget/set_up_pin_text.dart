import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class SetUpPinText extends StatelessWidget {
  const SetUpPinText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Let\'s  setup your PIN',
      textAlign: TextAlign.center,
      style: title3TextStyle.copyWith(color: CustomColor.keyColor),
    );
  }
}
