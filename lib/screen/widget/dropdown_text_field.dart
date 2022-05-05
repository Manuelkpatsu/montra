import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';

class DropdownTextField extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? items;
  final dynamic value;
  final FormFieldValidator<dynamic>? validator;
  final String hintText;
  final void Function(dynamic)? onChanged;

  const DropdownTextField({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.hintText,
    this.value,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      items: items,
      onChanged: onChanged,
      value: value,
      validator: validator,
      dropdownColor: CustomColor.light100Color,
      style: placeholderTextStyle.copyWith(color: CustomColor.blackColor),
      elevation: 8,
      iconSize: 20,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: CustomColor.lightColor,
      ),
      decoration: InputDecoration(
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
      ),
    );
  }
}
