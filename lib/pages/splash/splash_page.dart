import 'package:flutter/material.dart';
import 'package:go_green/core/theme/app_colors.dart';
import 'package:go_green/pages/onboarding/welcome_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  static const name = "/splash-screen";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, WelcomePage.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Lottie.asset(
          'assets/animations/lottie/splash_screen_animation.json',
          width: 300,
          height: 300,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}