import 'package:flutter/material.dart';
import 'package:montra/screen/main/main_screen.dart';

import 'widget/set_text.dart';
import 'widget/successful_sign_up_thumbnail.dart';

class SignUpSuccessScreen extends StatefulWidget {
  static const routeName = '/sign_up_success';

  const SignUpSuccessScreen({Key? key}) : super(key: key);

  @override
  State<SignUpSuccessScreen> createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends State<SignUpSuccessScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        MainScreen.routeName,
        (route) => false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SuccessfulSignUpThumbnail(),
            SetText(),
          ],
        ),
      ),
    );
  }
}
