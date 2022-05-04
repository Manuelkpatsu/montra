import 'package:flutter/material.dart';

class EmailSentThumbnail extends StatelessWidget {
  const EmailSentThumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/email.png',
      height: 312,
      width: 312,
      fit: BoxFit.cover,
    );
  }
}
