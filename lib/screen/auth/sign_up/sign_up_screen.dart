import 'package:flutter/material.dart';
import 'package:montra/screen/auth/verification/verification_screen.dart';
import 'package:montra/screen/widget/password_input_field.dart';
import 'package:montra/screen/widget/text_input_field.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/utils/validator.dart';

import 'widget/already_have_account.dart';
import 'widget/google_sign_up_button.dart';
import 'widget/or_with_text.dart';
import 'widget/sign_up_button.dart';
import 'widget/sign_up_text.dart';
import 'widget/terms_policy_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = true;
  bool _agreeToPolicy = false;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SignUpText(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 56),
              TextInputField(
                controller: _nameController,
                hintText: 'Name',
                inputAction: TextInputAction.next,
                inputType: TextInputType.name,
                validator: Validator.name,
              ),
              const SizedBox(height: 24),
              TextInputField(
                controller: _emailController,
                hintText: 'Email',
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
                validator: Validator.email,
              ),
              const SizedBox(height: 24),
              PasswordInputField(
                controller: _passwordController,
                inputAction: TextInputAction.done,
                validator: Validator.password,
                obscureText: _showPassword,
                hintText: 'Password',
                toggle: () => setState(() => _showPassword = !_showPassword),
              ),
              const SizedBox(height: 17),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: const VisualDensity(horizontal: -4),
                    activeColor: CustomColor.violet100Color,
                    value: _agreeToPolicy,
                    onChanged: (bool? value) =>
                        setState(() => _agreeToPolicy = value!),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    side: const BorderSide(
                      width: 1,
                      color: CustomColor.violet100Color,
                    ),
                  ),
                  const SizedBox(width: 10),
                  TermsPolicyText(onTap: () {}),
                ],
              ),
              const SizedBox(height: 17),
              SignUpButton(onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).pushNamed(VerificationScreen.routeName);
                  _formKey.currentState!.reset();
                }
              }),
              const SizedBox(height: 12),
              const OrWithText(),
              const SizedBox(height: 12),
              GoggleSignUpButton(onPressed: () {}),
              const SizedBox(height: 12),
              AlreadyHaveAccount(onTap: () {}),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
