import 'package:flutter/material.dart';
import 'package:montra/screen/widget/continue_button.dart';
import 'package:montra/screen/widget/text_input_field.dart';

import 'widget/forgot_password_info_text.dart';
import 'widget/forgot_password_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ForgotPasswordText(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const ForgotPasswordInfoText(),
            const SizedBox(height: 40),
            TextInputField(
              controller: _emailController,
              hintText: 'Email',
              inputAction: TextInputAction.done,
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 30),
            ContinueButton(onPressed: () {}),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
