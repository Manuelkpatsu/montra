import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const CustomOutlinedButton(
      {Key? key,
      required this.widget,
      required this.onPressed,
      this.height = 56,
      this.width = double.infinity,
      this.backgroundColor = CustomColor.light100Color,
      this.textColor = CustomColor.blackColor,
      this.borderColor = CustomColor.light60Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: widget,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: backgroundColor,
        primary: textColor,
        elevation: 0,
        textStyle: title3TextStyle,
        minimumSize: Size(width, height),
        side: BorderSide(color: borderColor, width: 1),
      ),
    );
  }
}
