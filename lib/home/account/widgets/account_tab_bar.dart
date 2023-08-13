import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/assets/recent_assets_list_view.dart';
import 'package:flutter_theme_etension/home/account/widgets/transactons/recent_transactions_list_view.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';
import 'package:flutter_theme_etension/utils/strings.dart';

class AccountTabBar extends StatelessWidget {
  const AccountTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 40,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: context.colors.primary,
              unselectedLabelColor: context.colors.onSurface,
              indicatorColor: context.colors.primary,
              labelStyle: context.textTheme.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
              tabs: [
                Tab(text: Strings.accountAssets.toUpperCase()),
                Tab(text: Strings.accountTransactions.toUpperCase()),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                RecentAssetsListView(),
                RecentTransactionListView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
