import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.widget,
    required this.onPressed,
    this.height = 56,
    this.width = double.infinity,
    this.backgroundColor = CustomColor.violet100Color,
    this.textColor = CustomColor.light80Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        primary: backgroundColor,
        onPrimary: textColor,
        elevation: 0,
        textStyle: title3TextStyle,
        minimumSize: Size(width, height),
      ),
      child: widget,
    );
  }
}
