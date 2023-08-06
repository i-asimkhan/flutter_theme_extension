import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/app_text_theme.dart';

class RecentTransactionListView extends StatelessWidget {
  const RecentTransactionListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello world",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              _SeeAllTransactionsButtonWidget(
                buttonText: 'See All',
                onButtonPressed: () {},
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 10,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              // return TransactionTile(
              //   walletId: walletId,
              //   transaction: transactions[index],
              //   onPressed: () => GetIt.instance
              //       .get<AppNavigator>()
              //       .navigateToTransactionDetailScreen(
              //         walletId: walletId,
              //         transactionId: transactions[index].referenceId!,
              //       ),
              // );
            },
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                color: context.colorScheme.secondary.withOpacity(0.7),
                margin: const EdgeInsets.symmetric(horizontal: 16),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _SeeAllTransactionsButtonWidget extends StatelessWidget {
  const _SeeAllTransactionsButtonWidget({
    Key? key,
    this.onButtonPressed,
    this.buttonText,
  }) : super(key: key);

  final VoidCallback? onButtonPressed;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => onButtonPressed?.call(),
        child: Text(
          "See All",
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.secondary,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
