import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/asset_tile_style.dart';

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
    return ListTile(
      tileColor: context.assetTileStyle.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(context.assetTileStyle.borderRadius),
      ),
      leading: const Icon(Icons.token),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(price),
          SizedBox(
            width: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  isUpward ? Icons.arrow_upward : Icons.arrow_downward,
                  size: 12,
                ),
                Text(percentage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
