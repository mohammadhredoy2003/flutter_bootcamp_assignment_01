import 'package:flutter/material.dart';
import 'package:go_green/pages/details_page.dart';

class MainPage extends StatelessWidget {
  static const name = "/main-page";

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsPage(name: "Tonmoy"),
              ),
            );
          },
          child: const Text("Go To Details Screen"),
        ),
      ),
    );
  }
}