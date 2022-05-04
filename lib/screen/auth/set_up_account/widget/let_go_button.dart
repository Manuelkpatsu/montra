import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class LetGoButton extends CustomButton {
  const LetGoButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Let\'s go'),
          onPressed: onPressed,
        );
}
