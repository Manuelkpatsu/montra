import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class RetypePinText extends StatelessWidget {
  const RetypePinText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ok. Retype your PIN again.',
      textAlign: TextAlign.center,
      style: title3TextStyle.copyWith(color: CustomColor.keyColor),
    );
  }
}
