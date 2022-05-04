import 'package:flutter/material.dart';

import 'widget/back_to_login_button.dart';
import 'widget/email_on_the_way_text.dart';
import 'widget/email_sent_thumbnail.dart';
import 'widget/password_reset_info_text.dart';
import 'widget/reset_password_button.dart';

class PasswordEmailSentScreen extends StatelessWidget {
  static const routeName = '/password_email_sent';

  const PasswordEmailSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 30),
              const EmailSentThumbnail(),
              const SizedBox(height: 18),
              const EmailOnTheWayText(),
              const SizedBox(height: 24),
              const PasswordResetInfoText(email: 'test@test.com'),
              const Spacer(),
              ResetPasswordButton(onPressed: () {}),
              const SizedBox(height: 20),
              BackToLoginButton(onPressed: () {}),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
