import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class ContinueButton extends CustomButton {
  const ContinueButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Continue'),
          onPressed: onPressed,
        );
}
