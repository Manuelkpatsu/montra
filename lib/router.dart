import 'package:flutter/material.dart';
import 'package:montra/screen/splash/splash_screen.dart';

import 'screen/auth/add_new_account/add_new_account_screen.dart';
import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/onboarding/onboarding_screen.dart';
import 'screen/auth/password_email_sent/password_email_sent_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/auth/retype_pin/retype_pin_screen.dart';
import 'screen/auth/set_up_account/set_up_account_screen.dart';
import 'screen/auth/set_up_pin/set_up_pin_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/sign_up_success/sign_up_success_screen.dart';
import 'screen/auth/verification/verification_screen.dart';
import 'screen/main/main_screen.dart';

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
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case PasswordEmailSentScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const PasswordEmailSentScreen(),
        );
      case ResetPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case SetUpPinScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SetUpPinScreen());
      case RetypePinScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RetypePinScreen());
      case SetUpAccountScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SetUpAccountScreen());
      case AddNewAccountScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddNewAccountScreen());
      case SignUpSuccessScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpSuccessScreen());
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MainScreen());
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
