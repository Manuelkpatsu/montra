import 'package:flutter/material.dart';
import 'package:montra/screen/auth/add_new_account/add_new_account_screen.dart';

import 'widget/let_go_button.dart';
import 'widget/set_up_account_info_text.dart';
import 'widget/set_up_account_text.dart';

class SetUpAccountScreen extends StatelessWidget {
  static const routeName = '/set_up_account';

  const SetUpAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const SetUpAccountText(),
              const SizedBox(height: 30),
              const SetUpAccountInfoText(),
              const Spacer(),
              LetGoButton(
                onPressed: () => Navigator.of(context).pushNamed(
                  AddNewAccountScreen.routeName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
