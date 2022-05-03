import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/styles.dart';
import 'package:montra/utils/validator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widget/enter_verification_code_text.dart';
import 'widget/resend_code_button.dart';
import 'widget/resend_code_text.dart';
import 'widget/verifcation_message.dart';
import 'widget/verification_text.dart';
import 'widget/verify_button.dart';

class VerificationScreen extends StatefulWidget {
  static const routeName = '/verification';

  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _codeController = TextEditingController();
  final int _countDownTimeInSecs = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const VerificationText(),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const EnterVerificationCodeText(),
                  const SizedBox(height: 50),
                  PinCodeTextField(
                    controller: _codeController,
                    showCursor: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    validator: Validator.code,
                    appContext: context,
                    length: 6,
                    textStyle: title1TextStyle.copyWith(
                      color: CustomColor.dark75Color,
                      fontSize: 30,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      borderWidth: 1,
                      fieldHeight: 40,
                      fieldWidth: 40,
                      activeColor: CustomColor.violet100Color,
                      selectedColor: CustomColor.violet100Color,
                      inactiveColor: CustomColor.pinCodeFieldColor,
                      inactiveFillColor: CustomColor.pinCodeFieldColor,
                      activeFillColor: CustomColor.pinCodeFieldColor,
                      selectedFillColor: CustomColor.pinCodeFieldColor,
                    ),
                    animationType: AnimationType.fade,
                    errorTextSpace: 20,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 40),
                  _countDownTimeInSecs != 0
                      ? ResendCodeText(countDownTime: _countDownTimeInSecs)
                      : const SizedBox.shrink(),
                  _countDownTimeInSecs != 0
                      ? const SizedBox(height: 16)
                      : const SizedBox.shrink(),
                  const VerificationMessage(email: 'emmaahuno@gmail.com'),
                  const SizedBox(height: 16),
                  ResendCodeButton(onTap: () {}),
                  const SizedBox(height: 40),
                  VerifyButton(onPressed: () {}),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
