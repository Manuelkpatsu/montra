import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class SetUpAccountText extends StatelessWidget {
  const SetUpAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Let\'s setup your account!',
      style: regular1TextStyle.copyWith(
        fontSize: 36,
        height: 1.22,
        color: CustomColor.blackColor,
      ),
    );
  }
}
