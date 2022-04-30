import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final bool? obscureText;
  final VoidCallback? toggle;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.obscureText,
    this.toggle,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: CustomColor.violet100Color,
      style: placeholderTextStyle.copyWith(color: CustomColor.blackColor),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: CustomColor.light60Color),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: CustomColor.light60Color),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: CustomColor.light60Color),
        ),
        filled: true,
        fillColor: CustomColor.light100Color,
        hintText: hintText,
        hintStyle: placeholderTextStyle.copyWith(color: CustomColor.lightColor),
        suffixIcon: IconButton(
          icon: obscureText!
              ? const Icon(Icons.visibility_off, color: CustomColor.lightColor)
              : const Icon(
                  Icons.visibility_outlined,
                  color: CustomColor.lightColor,
                ),
          onPressed: toggle,
        ),
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText!,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
