import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/home/home_screen.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/utils/strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/img/welcome.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      Strings.appName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: context.colors.defaultText),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Text(
                      Strings.appDescription,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: context.colors.defaultText),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                        ),
                        child: Text(
                          Strings.getStarted,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
