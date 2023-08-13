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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    style: context.textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: context.colors.linearGradient.colors.first,
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
    );
  }
}

// class _AccountHeaderButton extends StatelessWidget {
//   const _AccountHeaderButton({
//     Key? key,
//     required this.buttonType,
//     required this.onTap,
//   }) : super(key: key);

//   final ButtonType buttonType;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     String title = '';
//     if (buttonType == ButtonType.deposit) {
//       title = Strings.deposit;
//     } else if (buttonType == ButtonType.withdraw) {
//       title = Strings.withdraw;
//     }

//     if (buttonType == ButtonType.more) {
//       return SizedBox(
//         height: 45,
//         width: 45,
//         child: _buildWidget(title, true, context),
//       );
//     }

//     return SizedBox(
//       height: 45,
//       child: _buildWidget(title, false, context),
//     );
//   }

//   Widget _buildWidget(
//     String title,
//     bool isCircular,
//     BuildContext context,
//   ) {
//     return TextButton(
//       onPressed: onTap,
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(
//           isCircular ? Colors.transparent : context.colors.primary,
//         ),
//         shape: isCircular
//             ? MaterialStateProperty.all<CircleBorder>(
//                 CircleBorder(
//                   side: BorderSide(color: context.colors.primary),
//                 ),
//               )
//             : MaterialStateProperty.all<RoundedRectangleBorder>(
//                 RoundedRectangleBorder(
//                   side: BorderSide(color: context.colors.surface),
//                   borderRadius: BorderRadius.circular(45.0),
//                 ),
//               ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: isCircular ? 5 : 12.0,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               buttonType.icon,
//               color: context.colors.onSurface,
//               size: 18.0,
//             ),
//             if (!isCircular)
//               Text(
//                 title,
//                 style: context.textTheme.bodyLarge?.copyWith(
//                   color: context.colors.onSurface,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
