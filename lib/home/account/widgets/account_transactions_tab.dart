import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/recent_transactions_widget.dart';

class AccountTransactionsTab extends StatelessWidget {
  const AccountTransactionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: RecentTransactionListView(),
      ),
    );
  }
}
