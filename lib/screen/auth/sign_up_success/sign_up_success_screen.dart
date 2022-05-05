import 'package:flutter/material.dart';

import 'widget/set_text.dart';
import 'widget/successful_sign_up_thumbnail.dart';

class SignUpSuccessScreen extends StatelessWidget {
  static const routeName = '/sign_up_success';

  const SignUpSuccessScreen({Key? key}) : super(key: key);

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
