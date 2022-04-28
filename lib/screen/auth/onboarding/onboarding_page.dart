import 'package:flutter/material.dart';
import 'package:montra/model/page_view_model.dart';

import 'widget/body_text.dart';
import 'widget/onboarding_image.dart';
import 'widget/title_text.dart';

class OnboardingPage extends StatelessWidget {
  final PageViewModel model;

  const OnboardingPage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        OnboardingImage(image: model.image),
        const SizedBox(height: 30),
        TitleText(title: model.title),
        const SizedBox(height: 17),
        BodyText(body: model.body),
        const SizedBox(height: 30),
      ],
    );
  }
}
