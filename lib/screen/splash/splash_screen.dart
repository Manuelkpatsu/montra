import 'package:flutter/material.dart';
import 'package:montra/screen/auth/onboarding/onboarding_screen.dart';
import 'package:montra/theme/custom_color.dart';

import 'widget/montra_text.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacementNamed(
        OnboardingScreen.routeName,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColor.violet100Color,
      body: Center(
        child: MontraText(),
      ),
    );
  }
}
