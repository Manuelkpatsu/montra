import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class SetUpAccountInfoText extends StatelessWidget {
  const SetUpAccountInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Account can be your bank, credit card or your wallet.',
      style: regular3TextStyle.copyWith(color: CustomColor.deepBlackColor),
    );
  }
}
