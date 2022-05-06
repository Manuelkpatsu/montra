import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:montra/theme/custom_color.dart';
import 'package:montra/theme/custom_icons.dart';

import 'budget/budget_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';
import 'transaction/transaction_screen.dart';
import 'widget/bottom_tab_bar.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const TransactionScreen(),
    const BudgetScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _currentPageIndex,
        children: _screens,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SpeedDial(
        backgroundColor: CustomColor.violet100Color,
        icon: Icons.add,
        activeIcon: Icons.close,
        renderOverlay: false,
        spacing: 10,
        children: [
          SpeedDialChild(
            backgroundColor: CustomColor.green100Color,
            child: const Icon(
              CustomIcons.income,
              color: CustomColor.light80Color,
            ),
            onTap: () {},
          ),
          SpeedDialChild(
            backgroundColor: CustomColor.blue100Color,
            child: const Icon(
              CustomIcons.moneyExchange,
              color: CustomColor.light80Color,
            ),
            onTap: () {},
          ),
          SpeedDialChild(
            backgroundColor: CustomColor.red100Color,
            child: const Icon(
              CustomIcons.expense,
              color: CustomColor.light80Color,
            ),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomTabBar(
        index: _currentPageIndex,
        onChanged: (int index) => setState(() => _currentPageIndex = index),
      ),
    );
  }
}
