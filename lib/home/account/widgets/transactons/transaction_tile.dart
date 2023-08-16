import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/extensions/transaction_tile_style.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ListTile(
        tileColor: context.transactionTileStyle.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(context.transactionTileStyle.borderRadius),
        ),
        leading: Icon(
          isUpward ? Icons.arrow_upward : Icons.arrow_downward,
          color: context.colors.onSurface,
        ),
        title: Text(
          transactionType,
          style: context.textTheme.titleMedium
              ?.copyWith(color: context.colors.onSurface),
        ),
        subtitle: Text(
          transactionStatus,
          style: context.textTheme.bodySmall
              ?.copyWith(color: context.colors.onSurface),
        ),
        trailing: Text(
          price,
          style: context.textTheme.labelMedium?.copyWith(
              color: context.colors.onSurface, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
