import 'package:flutter/material.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/custom_icons.dart';

class BottomTabBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChanged;

  const BottomTabBar({
    Key? key,
    required this.index,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    const placeholder = Opacity(
      opacity: 0,
      child: IconButton(onPressed: null, icon: Icon(Icons.no_cell)),
    );

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      elevation: 5,
      color: CustomColor.light80Color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          buildTabItem(
            icon: const Icon(CustomIcons.home, size: 20),
            index: 0,
            label: 'Home',
          ),
          buildTabItem(
            icon: const Icon(CustomIcons.transaction, size: 20),
            index: 1,
            label: 'Transaction',
          ),
          placeholder,
          buildTabItem(
            icon: const Icon(CustomIcons.pieChart, size: 20),
            index: 2,
            label: 'Budget',
          ),
          buildTabItem(
            icon: const Icon(CustomIcons.user, size: 20),
            index: 3,
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildTabItem({
    required Icon icon,
    required int index,
    required String label,
  }) {
    final isSelected = index == widget.index;

    return Theme(
      data: ThemeData(
        iconTheme: IconThemeData(
          color: isSelected
              ? CustomColor.violet100Color
              : CustomColor.unSelectedTabColor,
        ),
      ),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => widget.onChanged(index),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  color: isSelected
                      ? CustomColor.violet100Color
                      : CustomColor.unSelectedTabColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
