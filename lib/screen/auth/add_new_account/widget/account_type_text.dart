import 'package:flutter/material.dart';
import 'package:montra/theme/styles.dart';

class AccountTypeText extends StatelessWidget {
  final String? accountType;

  const AccountTypeText({Key? key, required this.accountType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return accountType != null
        ? Align(
            alignment: Alignment.centerLeft,
            child: Text(
              accountType!,
              style: regular1TextStyle.copyWith(color: Colors.black),
            ),
          )
        : const SizedBox.shrink();
  }
}
