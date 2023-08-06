import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_assets_tab.dart';
import 'package:flutter_theme_etension/home/account/widgets/account_transactions_tab.dart';
import 'package:flutter_theme_etension/strings.dart';
import 'package:flutter_theme_etension/theme/app_colors.dart';
import 'package:flutter_theme_etension/theme/app_text_theme.dart';

class AccountTabBar extends StatelessWidget {
  const AccountTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: context.colorScheme.surface,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(
                      color: context.colorScheme.secondary.withOpacity(0.7),
                    ),
                  ),
                ),
                child: TabBar(
                  labelColor: context.colorScheme.onSurface,
                  unselectedLabelColor: context.colors.cardBgColor,
                  indicatorColor: context.colorScheme.primary,
                  labelStyle: context.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w800),
                  tabs: [
                    Tab(text: Strings.accountAssets),
                    Tab(text: Strings.accountTransactions),
                  ],
                ),
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                AccountAssetsWidget(),
                AccountTransactionsTab(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
