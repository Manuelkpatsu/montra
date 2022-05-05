import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfulSignUpThumbnail extends StatelessWidget {
  const SuccessfulSignUpThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets9.lottiefiles.com/packages/lf20_yqu08xwf.json',
      repeat: false,
    );
  }
}
