import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class SignUpButton extends CustomButton {
  const SignUpButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Sign Up'),
          onPressed: onPressed,
        );
}
