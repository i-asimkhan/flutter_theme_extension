import 'package:flutter/material.dart';

// class MyTheme extends ThemeData {
//   MyTheme() {
//     // Define your theme properties here.
//   }
// }

// class MyThemeExtension extends ThemeExtension<MyThemeExtension> {
//   final bool isDarkMode;

//   MyThemeExtension({this.isDarkMode = false});

//   @override
//   ThemeExtension<MyThemeExtension> copyWith({bool? isDarkMode}) {
//     return MyThemeExtension(isDarkMode: isDarkMode ?? this.isDarkMode);
//   }

//   void updateTheme(BuildContext context) {
//     if (isDarkMode) {
//       Theme.of(context).copyWith(brightness: Brightness.dark);
//     } else {
//       Theme.of(context).copyWith(brightness: Brightness.light);
//     }
//   }

//   @override
//   ThemeExtension<MyThemeExtension> lerp(
//       covariant ThemeExtension<MyThemeExtension>? other, double t) {
//     if (other is! MyThemeExtension) {
//       return this;
//     }

//     return MyThemeExtension(
//       isDarkMode: other.isDarkMode,
//     );
//   }
// }

class Pseudocode extends StatelessWidget {
  const Pseudocode({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeData myTheme = ThemeData.from(MyTheme());

    // ThemeData(
    //   /// Extensions
    //   extensions: <ThemeExtension>[
    //     ...
    //   ],
    // );
    // Card(color: Colors.blue);
    // Text('Hello!', style: TextStyle());

    // Text('Hello!', style: Theme.of(context).textTheme.headlineLarge?.copyWith(...));

    // MaterialApp(theme: BrandedTheme(),
    // darkTheme: BrandedDarkTheme(),
    // );

    // // step 1: check variables
    // Style? style = styleVariable;

    // // step 2 & 3 check the theme
    // style ??= Theme.of(context).appropriateTheme.style;

    return Container();
  }
}

// class CardStyle extends ThemeExtension<CardStyle> {
//   const CardStyle({
//     required this.backgroundColor,
//     required this.borderRadius,
//   });

//   final Color backgroundColor;
//   final double borderRadius;
// }

// class TransactionCardWidget extends StatelessWidget {
//   const TransactionCardWidget({
//     super.key,
//     this.style,
//   });

//   final CardStyle? style;

//   @override
//   Widget build(BuildContext context) {
//     // TODO: Get a CardStyle from theme
//     // if style is null
//   }
// }
