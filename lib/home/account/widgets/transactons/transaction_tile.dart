import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/transaction_tile_style.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.isUpward,
    required this.transactionType,
    required this.transactionStatus,
    required this.price,
  });

  final bool isUpward;
  final String transactionType;
  final String transactionStatus;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.transactionTileStyle.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(context.transactionTileStyle.borderRadius),
      ),
      leading: Icon(
        isUpward ? Icons.arrow_upward : Icons.arrow_downward,
      ),
      title: Text(transactionType),
      subtitle: Text(transactionStatus),
      trailing: Text(price),
    );
  }
}
