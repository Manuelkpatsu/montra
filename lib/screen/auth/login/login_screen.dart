import 'package:flutter/material.dart';
import 'package:montra/screen/auth/forgot_password/forgot_password_screen.dart';
import 'package:montra/screen/auth/set_up_pin/set_up_pin_screen.dart';
import 'package:montra/screen/auth/sign_up/sign_up_screen.dart';
import 'package:montra/screen/widget/password_input_field.dart';
import 'package:montra/screen/widget/text_input_field.dart';
import 'package:montra/utils/validator.dart';

import 'widget/create_new_account.dart';
import 'widget/forgot_password.dart';
import 'widget/login_button.dart';
import 'widget/login_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LoginText(),
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
              const SizedBox(height: 50),
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
                hintText: 'Password',
                inputAction: TextInputAction.done,
                validator: Validator.password,
                obscureText: _showPassword,
                toggle: () => setState(() => _showPassword = !_showPassword),
              ),
              const SizedBox(height: 40),
              LoginButton(
                onPressed: () => Navigator.of(context).pushNamed(
                  SetUpPinScreen.routeName,
                ),
              ),
              const SizedBox(height: 30),
              ForgotPassword(
                onPressed: () => Navigator.of(context).pushNamed(
                  ForgotPasswordScreen.routeName,
                ),
              ),
              const SizedBox(height: 30),
              CreateNewAccount(
                onTap: () => Navigator.of(context).pushNamed(
                  SignUpScreen.routeName,
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
