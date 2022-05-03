import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';

class LoginButton extends CustomButton {
  const LoginButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Login'),
          onPressed: onPressed,
        );
}
