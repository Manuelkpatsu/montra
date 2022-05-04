import 'package:flutter/material.dart';
import 'package:montra/screen/auth/retype_pin/retype_pin_screen.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';
import 'package:montra/utils/validator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widget/set_up_pin_text.dart';

class SetUpPinScreen extends StatefulWidget {
  static const routeName = '/set_up_pin';

  const SetUpPinScreen({Key? key}) : super(key: key);

  @override
  State<SetUpPinScreen> createState() => _SetUpPinScreenState();
}

class _SetUpPinScreenState extends State<SetUpPinScreen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.violet100Color,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const SetUpPinText(),
              const SizedBox(height: 90),
              PinCodeTextField(
                autoFocus: true,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                obscureText: true,
                controller: _pinController,
                showCursor: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                validator: Validator.pin,
                appContext: context,
                length: 4,
                textStyle: title1TextStyle.copyWith(
                  color: CustomColor.light100Color,
                  fontSize: 12,
                ),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
                  borderWidth: 4,
                  fieldHeight: 32,
                  fieldWidth: 32,
                  activeColor: CustomColor.keyColor,
                  selectedColor: CustomColor.keyColor,
                  inactiveColor: CustomColor.violet20Color,
                  inactiveFillColor: Colors.transparent,
                  activeFillColor: Colors.transparent,
                  selectedFillColor: Colors.transparent,
                ),
                animationType: AnimationType.fade,
                errorTextSpace: 20,
                onChanged: (value) {},
                onCompleted: (value) {
                  Navigator.of(context).pushNamed(RetypePinScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
