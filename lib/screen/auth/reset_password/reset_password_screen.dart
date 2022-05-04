import 'package:flutter/material.dart';
import 'package:montra/screen/auth/login/login_screen.dart';
import 'package:montra/screen/widget/continue_button.dart';
import 'package:montra/screen/widget/password_input_field.dart';
import 'package:montra/utils/validator.dart';

import 'widget/reset_password_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const routeName = '/reset_password';

  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = true;
  bool _showConfirmPassword = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ResetPasswordText(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: 50),
              PasswordInputField(
                controller: _passwordController,
                hintText: 'New Password',
                inputAction: TextInputAction.next,
                validator: Validator.password,
                obscureText: _showPassword,
                toggle: () => setState(() => _showPassword = !_showPassword),
              ),
              const SizedBox(height: 24),
              PasswordInputField(
                controller: _confirmPasswordController,
                inputAction: TextInputAction.done,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please confirm password';
                  }

                  if (_passwordController.text !=
                      _confirmPasswordController.text) {
                    return "Passwords do not match";
                  }

                  return null;
                },
                obscureText: _showConfirmPassword,
                hintText: 'Retype new password',
                toggle: () => setState(
                    () => _showConfirmPassword = !_showConfirmPassword),
              ),
              const SizedBox(height: 30),
              ContinueButton(
                onPressed: () => Navigator.of(context).pushNamed(
                  LoginScreen.routeName,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
