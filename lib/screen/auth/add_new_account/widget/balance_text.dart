import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class BalanceText extends StatelessWidget {
  const BalanceText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Balance',
        style: title3TextStyle.copyWith(
          color: CustomColor.keyColor.withOpacity(0.68),
        ),
      ),
    );
  }
}
