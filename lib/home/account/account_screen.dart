import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_header_widget.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_tab_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AccountHeaderWidget(
          totalBalance: '200',
        ),
        Expanded(
          child: AccountTabBar(),
        ),
      ],
    );
  }
}
