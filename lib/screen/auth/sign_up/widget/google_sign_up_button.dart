import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_outline_button.dart';

class GoggleSignUpButton extends CustomOutlinedButton {
  GoggleSignUpButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          onPressed: onPressed,
          widget: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              const Text('Sign Up with Google'),
            ],
          ),
        );
}
