import 'package:flutter/material.dart';
import 'package:flutter_assignment1/pages/splash/splash_page.dart';
import 'package:flutter_assignment1/pages/onboarding/welcome_page.dart';
import 'package:flutter_assignment1/pages/auth/login_page.dart';
import 'package:flutter_assignment1/pages/auth/register_page.dart';
import 'package:flutter_assignment1/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Go Green",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.amber,
        ),
      ),
      initialRoute: SplashPage.name,
      routes: {
        SplashPage.name: (context) => const SplashPage(),
        WelcomePage.name: (context) => const WelcomePage(),
        LoginPage.name: (context) => const LoginPage(),
        RegisterPage.name: (context) => const RegisterPage(),
        MainPage.name: (context) => const MainPage(),
      },
    );
  }
}