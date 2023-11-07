import 'package:flutter/material.dart';
import 'package:tmdbmovies/ui/utils/AppColors.dart';
import 'package:tmdbmovies/ui/utils/Strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.app_bg_color),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                image: AssetImage("assets/movies.png"),
              ),
              AppNameCard()
            ],
          ),
          LinearBar()
        ],
      ),
    );
  }

  Widget AppNameCard() {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Strings.the,
            style: TextStyle(
              color: AppColors.text_color,
              fontWeight: FontWeight.w400,
              fontSize: 36,
              decoration: TextDecoration.none,
            ),
          ),
          const Text(
            Strings.TMDB,
            style: TextStyle(
              color: AppColors.text_color,
              fontWeight: FontWeight.w400,
              fontSize: 57,
              decoration: TextDecoration.none,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                Strings.app,
                style: TextStyle(
                  color: AppColors.text_color,
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget LinearBar() {
    return const LinearProgressIndicator(
      backgroundColor: Colors.cyanAccent,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.amber,
      ),
      value: 0.33,
      minHeight: 12,
    );
  }
}
