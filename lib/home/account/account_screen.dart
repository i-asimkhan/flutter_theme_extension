import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_header_widget.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_tab_bar.dart';
import 'package:flutter_theme_etension/home/account/widgets/fl_chart_widget.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: context.colors.background,
            height: 96,
          ),
          const AccountHeaderWidget(
            totalBalance: '\$10,323.23',
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            color: context.colors.background,
            height: 200,
            child: const FLChartWidget(),
          ),
          Container(
            color: context.colors.background,
            height: 24,
          ),
          const Expanded(
            child: AccountTabBar(),
          ),
        ],
      ),
    );
  }
}
