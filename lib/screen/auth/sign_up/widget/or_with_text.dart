import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class OrWithText extends StatelessWidget {
  const OrWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'or with',
      style: regular3TextStyle.copyWith(
        fontWeight: FontWeight.w700,
        color: CustomColor.lightColor,
      ),
    );
  }
}
