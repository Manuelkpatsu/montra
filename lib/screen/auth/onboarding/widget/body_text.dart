import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class BodyText extends StatelessWidget {
  final String body;

  const BodyText({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        body,
        textAlign: TextAlign.center,
        style: regular1TextStyle.copyWith(color: CustomColor.lightColor),
      ),
    );
  }
}
