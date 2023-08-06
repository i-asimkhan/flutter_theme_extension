import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/account/widgets/button_type.dart';
import 'package:flutter_theme_etension/strings.dart';
import 'package:flutter_theme_etension/theme/app_text_theme.dart';

class AccountHeaderWidget extends StatelessWidget {
  const AccountHeaderWidget({
    required this.totalBalance,
    Key? key,
  }) : super(key: key);

  final String totalBalance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.accountTotalBalance,
                style: context.textTheme.titleSmall
                    ?.copyWith(color: context.colorScheme.primary),
              ),
              Text(
                "\$ ${totalBalance.isEmpty ? 0.00 : totalBalance}",
                style: context.textTheme.headlineLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AccountHeaderButton(
                buttonType: ButtonType.deposit,
                onTap: () {},
              ),
              const SizedBox(
                width: 8,
              ),
              _AccountHeaderButton(
                buttonType: ButtonType.withdraw,
                onTap: () {},
              ),
              const SizedBox(
                width: 8,
              ),
              _AccountHeaderButton(
                buttonType: ButtonType.more,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}

class _AccountHeaderButton extends StatelessWidget {
  const _AccountHeaderButton({
    Key? key,
    required this.buttonType,
    required this.onTap,
  }) : super(key: key);

  final ButtonType buttonType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    String title = '';
    if (buttonType == ButtonType.deposit) {
      title = Strings.deposit;
    } else if (buttonType == ButtonType.withdraw) {
      title = Strings.withdraw;
    }

    if (buttonType == ButtonType.more) {
      return SizedBox(
        height: 45,
        width: 45,
        child: _buildWidget(title, true, context),
      );
    }

    return SizedBox(
      height: 45,
      child: _buildWidget(title, false, context),
    );
  }

  Widget _buildWidget(
    String title,
    bool isCircular,
    BuildContext context,
  ) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          isCircular ? Colors.transparent : context.colorScheme.primary,
        ),
        shape: isCircular
            ? MaterialStateProperty.all<CircleBorder>(
                CircleBorder(
                  side: BorderSide(color: context.colorScheme.primary),
                ),
              )
            : MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: context.colorScheme.surface),
                  borderRadius: BorderRadius.circular(45.0),
                ),
              ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isCircular ? 5 : 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              buttonType.icon,
              color: context.colorScheme.onSurface,
              size: 18.0,
            ),
            if (!isCircular)
              Text(
                title,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurface,
                  fontWeight: FontWeight.w400,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
