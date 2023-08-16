import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/extensions/transaction_tile_style.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';

class AssetTile extends StatelessWidget {
  const AssetTile({
    super.key,
    required this.isUpward,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.percentage,
  });

  final bool isUpward;
  final String title;
  final String subTitle;
  final String price;
  final String percentage;

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
          Icons.token,
          color: context.colors.onSurface,
        ),
        title: Text(
          title,
          style: context.textTheme.titleMedium
              ?.copyWith(color: context.colors.onSurface),
        ),
        subtitle: Text(
          subTitle,
          style: context.textTheme.bodySmall
              ?.copyWith(color: context.colors.onSurface),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              price,
              style: context.textTheme.labelMedium?.copyWith(
                  color: context.colors.onSurface, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    isUpward ? Icons.arrow_upward : Icons.arrow_downward,
                    color: context.colors.onSurface,
                    size: 12,
                  ),
                  Text(
                    percentage,
                    style: context.textTheme.labelMedium
                        ?.copyWith(color: context.colors.onSurface),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
