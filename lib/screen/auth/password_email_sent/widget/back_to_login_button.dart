import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class BackToLoginButton extends CustomButton {
  const BackToLoginButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Back to Login'),
          onPressed: onPressed,
        );
}
