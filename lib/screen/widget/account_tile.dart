import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';

class AccountTile extends StatelessWidget {
  final VoidCallback onSelect;
  final bool isSelected;
  final String thumbnail;

  const AccountTile({
    Key? key,
    required this.onSelect,
    required this.isSelected,
    required this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onSelect,
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSelected
                ? CustomColor.violet20Color
                : CustomColor.light60Color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color:
                  isSelected ? CustomColor.violet100Color : Colors.transparent,
              width: 1,
            ),
          ),
          child: Center(child: Image.asset(thumbnail, fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
