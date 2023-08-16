import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/transactons/transaction_tile.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';

class RecentTransactionListView extends StatelessWidget {
  const RecentTransactionListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "TODAY",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$2.00',
            ),
            const TransactionTile(
              isUpward: true,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$30.40',
            ),
            const TransactionTile(
              isUpward: true,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$100.00',
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$50.00',
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$30.00',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "YESTERDAY",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$2.00',
            ),
            const TransactionTile(
              isUpward: true,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$30.40',
            ),
            const TransactionTile(
              isUpward: true,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$100.00',
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$50.00',
            ),
            const TransactionTile(
              isUpward: false,
              transactionType: 'Asset',
              transactionStatus: 'ABB',
              price: '\$30.00',
            ),
          ],
        ),
      ),
    );
  }
}
