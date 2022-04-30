import 'package:flutter/material.dart';
import 'package:montra/model/page_view_model.dart';
import 'package:montra/screen/auth/sign_up/sign_up_screen.dart';
import 'package:montra/screen/widget/custom_button.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  static const routeName = '/onboarding';

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  final List<PageViewModel> _pages = [
    PageViewModel(
      title: 'Gain total control of your money',
      body: 'Become your own money manager and make every cent count',
      image: 'assets/images/control-money.png',
    ),
    PageViewModel(
      title: 'Know where your money goes',
      body:
          'Track your transaction easily, with categories and financial report',
      image: 'assets/images/know-where.png',
    ),
    PageViewModel(
      title: 'Planning ahead',
      body: 'Setup your budget for each category so you in control',
      image: 'assets/images/planning-ahead.png',
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: _pages.length,
                  controller: _controller,
                  onPageChanged: (index) {},
                  itemBuilder: (context, index) {
                    PageViewModel model = _pages[index];

                    return OnboardingPage(model: model);
                  },
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: _pages.length,
                    effect: const WormEffect(
                      spacing: 10,
                      dotHeight: 16,
                      dotWidth: 16,
                      dotColor: CustomColor.violet20Color,
                      activeDotColor: CustomColor.violet100Color,
                    ),
                    onDotClicked: (index) => _controller.animateToPage(
                      index,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.easeIn,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(SignUpScreen.routeName),
                widget: const Text('Sign Up'),
              ),
              const SizedBox(height: 16),
              CustomButton(
                onPressed: () {},
                widget: const Text('Login'),
                backgroundColor: CustomColor.violet20Color,
                textColor: CustomColor.violet100Color,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
