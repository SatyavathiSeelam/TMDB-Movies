import 'package:flutter/material.dart';
import 'package:tmdbmovies/ui/utils/AppColors.dart';
import 'OnBoarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.app_bg_color,
      child: SingleChildScrollView(
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
            LinearBar(index),
            SizedBox(height: 50,),
            DescriptionHeader(index),
            SizedBox(height: 16,),
            DescriptionInfo(index),
            SizedBox(height: 50,),
            NextButton(index: index,onTapButton: (){
              setState(() {
                if (index < 2) {
                  this.index++;
                }else{
                Navigator.pushNamed(context, "/auth_page");
                }
              });
            } )
          ],
        ),
      ),
    );
  }
}
