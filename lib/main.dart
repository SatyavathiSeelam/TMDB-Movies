import 'package:flutter/material.dart';
import 'package:tmdbmovies/ui/auth/AuthScreen.dart';
import 'package:tmdbmovies/ui/onboard/OnBoardingScreen.dart';

void main() {
  runApp(const TMDBApp());
}

class TMDBApp extends StatelessWidget {
  const TMDBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/auth_page",
      routes: {
        "/onboard_page":(context) => OnBoardingScreen(),
        "/auth_page": (context)=> AuthScreen(),
      },
    );
  }
}

