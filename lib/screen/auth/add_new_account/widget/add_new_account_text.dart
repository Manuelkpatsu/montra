import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class AddNewAccountText extends StatelessWidget {
  const AddNewAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Add new account',
      style: title3TextStyle.copyWith(color: CustomColor.light100Color),
    );
  }
}
