import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/assets/asset_tile.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';

class RecentAssetsListView extends StatelessWidget {
  const RecentAssetsListView({super.key});

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
                  color: context.colors.onSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$2.00',
              percentage: '-1.00%',
            ),
            const AssetTile(
              isUpward: true,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$30.40',
              percentage: '+2.00%',
            ),
            const AssetTile(
              isUpward: true,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$100.00',
              percentage: '+2.00%',
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$50.00',
              percentage: '-0.30%',
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$30.00',
              percentage: '-0.30%',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "YESTERDAY",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colors.onSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$2.00',
              percentage: '-1.00%',
            ),
            const AssetTile(
              isUpward: true,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$30.40',
              percentage: '+2.00%',
            ),
            const AssetTile(
              isUpward: true,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$100.00',
              percentage: '+2.00%',
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$50.00',
              percentage: '-0.30%',
            ),
            const AssetTile(
              isUpward: false,
              title: 'Asset',
              subTitle: 'ABB',
              price: '\$30.00',
              percentage: '-0.30%',
            ),
          ],
        ),
      ),
    );
  }
}
