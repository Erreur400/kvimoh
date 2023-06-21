import 'package:flutter/material.dart';
import 'package:kimoh/screens/onboarding.page.dart';
import 'package:kimoh/utils/utils.dart';
import 'package:kimoh/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Utils.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const OnboardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
