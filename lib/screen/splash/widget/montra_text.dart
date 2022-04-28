import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class MontraText extends StatefulWidget {
  const MontraText({Key? key}) : super(key: key);

  @override
  State<MontraText> createState() => _MontraTextState();
}

class _MontraTextState extends State<MontraText> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Text(
        'montra',
        textAlign: TextAlign.center,
        style: titleXTextStyle.copyWith(
          color: CustomColor.light100Color,
          fontSize: 56,
          height: 1.21,
        ),
      ),
    );
  }
}
