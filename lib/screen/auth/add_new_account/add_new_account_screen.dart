import 'package:flutter/material.dart';
import 'package:montra/model/bank_account.dart';
import 'package:montra/screen/widget/account_tile.dart';
import 'package:montra/screen/widget/continue_button.dart';
import 'package:montra/screen/widget/dropdown_text_field.dart';
import 'package:montra/screen/widget/text_input_field.dart';
import 'package:montra/theme/custom_color.dart';

import 'widget/account_type_text.dart';
import 'widget/add_new_account_text.dart';
import 'widget/amount_text.dart';
import 'widget/balance_text.dart';

class AddNewAccountScreen extends StatefulWidget {
  static const routeName = '/add_new_account';

  const AddNewAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAccountScreen> createState() => _AddNewAccountScreenState();
}

class _AddNewAccountScreenState extends State<AddNewAccountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final List<String> _accounts = ['Bank', 'Wallet', 'Credit Card'];
  final List<BankAccount> _bankAccounts = [
    BankAccount(
      id: 1,
      name: 'Chase',
      thumbnail: 'assets/images/banks/chase.png',
    ),
    BankAccount(
      id: 1,
      name: 'Paypal',
      thumbnail: 'assets/images/banks/paypal.png',
    ),
    BankAccount(
      id: 1,
      name: 'Citi',
      thumbnail: 'assets/images/banks/citi.png',
    ),
    BankAccount(
      id: 1,
      name: 'Bank of America',
      thumbnail: 'assets/images/banks/boa.png',
    ),
    BankAccount(
      id: 1,
      name: 'Jago',
      thumbnail: 'assets/images/banks/jago.png',
    ),
    BankAccount(
      id: 1,
      name: 'Mandiri',
      thumbnail: 'assets/images/banks/mandiri.png',
    ),
    BankAccount(
      id: 1,
      name: 'Bank Central Asia',
      thumbnail: 'assets/images/banks/bca.png',
    ),
  ];
  String? _selectedAccount;
  int? _selectedBank;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.violet100Color,
      appBar: AppBar(
        backgroundColor: CustomColor.violet100Color,
        title: const AddNewAccountText(),
        centerTitle: true,
        iconTheme: const IconThemeData(color: CustomColor.light100Color),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const BalanceText(),
          const SizedBox(height: 13),
          const AmountText(amount: 0.0),
          const SizedBox(height: 8),
          IntrinsicHeight(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: CustomColor.light100Color,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(32),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  TextInputField(
                    controller: _nameController,
                    hintText: 'Name',
                    readOnly: true,
                    inputAction: TextInputAction.done,
                    inputType: TextInputType.name,
                  ),
                  const SizedBox(height: 16),
                  DropdownTextField(
                    hintText: 'Account Type',
                    value: _selectedAccount,
                    onChanged: (value) {
                      setState(() {
                        _selectedAccount = value!;
                      });
                    },
                    items: _accounts
                        .map((account) => DropdownMenuItem(
                              child: Text(account),
                              value: account,
                            ))
                        .toList(),
                    validator: (value) =>
                        value == null ? "Select account" : null,
                  ),
                  _selectedAccount != null
                      ? const SizedBox(height: 16)
                      : const SizedBox.shrink(),
                  AccountTypeText(accountType: _selectedAccount),
                  _selectedAccount != null
                      ? const SizedBox(height: 16)
                      : const SizedBox.shrink(),
                  _selectedAccount != null
                      ? SizedBox(
                          height: 130,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(0),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 6,
                              mainAxisExtent: 40,
                            ),
                            itemCount: _bankAccounts.length,
                            itemBuilder: (BuildContext context, int index) {
                              BankAccount bankAccount = _bankAccounts[index];

                              return AccountTile(
                                onSelect: () {
                                  setState(() {
                                    _selectedBank = index;
                                    _nameController.text = bankAccount.name;
                                  });
                                },
                                isSelected: _selectedBank == index,
                                thumbnail: bankAccount.thumbnail,
                              );
                            },
                          ),
                        )
                      : const SizedBox.shrink(),
                  const SizedBox(height: 30),
                  ContinueButton(onPressed: () {}),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
