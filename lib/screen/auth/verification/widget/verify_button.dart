import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class VerifyButton extends CustomButton {
  const VerifyButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Verify'),
          onPressed: onPressed,
        );
}
