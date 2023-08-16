import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/themes/app_text_theme.dart';
import 'package:flutter_theme_etension/utils/strings.dart';

class AccountHeaderWidget extends StatelessWidget {
  const AccountHeaderWidget({
    required this.totalBalance,
    Key? key,
  }) : super(key: key);

  final String totalBalance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${totalBalance.isEmpty ? 0.00 : totalBalance}",
                      style: context.textTheme.headlineSmall
                          ?.copyWith(color: context.colors.onSurface),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_drop_up,
                          color: context.colors.primary,
                          size: 32,
                        ),
                        Text(
                          Strings.accountPercentage,
                          style: context.textTheme.labelMedium?.copyWith(
                            color: context.colors.onSurface,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    const Icon(Icons.remove_red_eye_rounded)
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  Strings.lastUpdated,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colors.onSurfaceVariant,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(Strings.deposit.toUpperCase()),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: 120,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(Strings.withdraw.toUpperCase()),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  Strings.day,
                  style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.colors.onSurfaceVariant),
                ),
                Text(
                  Strings.week,
                  style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.colors.onSurfaceVariant),
                ),
                Column(
                  children: [
                    Text(
                      Strings.month,
                      style: context.textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: context.colors.primary),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 2,
                      width: 24,
                      color: context.colors.primary,
                    ),
                  ],
                ),
                Text(
                  Strings.year,
                  style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.colors.onSurfaceVariant),
                ),
                Text(
                  Strings.max,
                  style: context.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.colors.onSurfaceVariant),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
