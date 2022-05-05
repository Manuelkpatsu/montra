import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class AmountText extends StatelessWidget {
  final double amount;

  const AmountText({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        '\$${amount.toStringAsFixed(2)}',
        style: title2TextStyle.copyWith(
          color: CustomColor.keyColor,
          fontSize: 64,
          height: 1.20,
        ),
      ),
    );
  }
}
