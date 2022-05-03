import 'package:flutter/material.dart';
import 'package:montra/screen/splash/splash_screen.dart';

import 'screen/auth/onboarding/onboarding_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/verification/verification_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case OnboardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case VerificationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
