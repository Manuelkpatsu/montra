import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class ResendCodeText extends StatelessWidget {
  final int countDownTime;

  const ResendCodeText({Key? key, required this.countDownTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '00:${countDownTime.toString().padLeft(2, '0')}',
      style: title3TextStyle.copyWith(color: CustomColor.violet100Color),
    );
  }
}
