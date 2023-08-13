import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/transaction_tile_style.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    super.key,
    this.style,
  });

  final TransactionTileStyle? style;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: style?.backgroundColor ??
          Theme.of(context).extension<TransactionTileStyle>()!.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(style?.borderRadius ??
            Theme.of(context).extension<TransactionTileStyle>()!.borderRadius),
      ),
    );
  }
}
