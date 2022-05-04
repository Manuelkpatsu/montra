import 'package:flutter/material.dart';
import 'package:montra/screen/widget/custom_button.dart';
import 'package:montra/theme/custom_color.dart';

class ResetPasswordButton extends CustomButton {
  const ResetPasswordButton({Key? key, required VoidCallback? onPressed})
      : super(
          key: key,
          widget: const Text('Reset Password'),
          onPressed: onPressed,
          backgroundColor: CustomColor.violet20Color,
          textColor: CustomColor.violet100Color,
        );
}
