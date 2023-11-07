import 'package:flutter/material.dart';

import '../utils/AppColors.dart';
import '../utils/Strings.dart';

Widget AppNameCard() {
  return const IntrinsicWidth(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.the,
          style: TextStyle(
            color: AppColors.text_color,
            fontWeight: FontWeight.w400,
            fontSize: 36,
            decoration: TextDecoration.none,
          ),
        ),
        Text(
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
            Text(
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

Widget LinearBar(int index) {
  double progressValue = ((index + 1) * 0.25);
  return LinearProgressIndicator(
    backgroundColor: AppColors.progress_bg_color,
    valueColor: const AlwaysStoppedAnimation<Color>(
      AppColors.progress_color,
    ),
    value: progressValue,
    minHeight: 12,
  );
}

Widget DescriptionTextsTwo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60.0),
    child: RichText(
      text: const TextSpan(
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
          children: [
            TextSpan(
                text: "the ", style: TextStyle(color: AppColors.text_color)),
            TextSpan(
                text: "MULTIVERSE",
                style: TextStyle(color: AppColors.text_color_description)),
            TextSpan(
                text: " of", style: TextStyle(color: AppColors.text_color)),
          ]),
    ),
  );
}

Widget DescriptionTextsOne() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 54.0),
    child: RichText(
      text: const TextSpan(
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
          children: [
            TextSpan(
                text: "Get ready to ",
                style: TextStyle(color: AppColors.text_color)),
            TextSpan(
                text: "BINGE",
                style: TextStyle(color: AppColors.text_color_description)),
          ]),
    ),
  );
}

Widget DescriptionTextsThree() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60.0),
    child: RichText(
      text: const TextSpan(
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
          children: [
            TextSpan(
                text: "your ", style: TextStyle(color: AppColors.text_color)),
            TextSpan(
                text: "IMAGINATION",
                style: TextStyle(color: AppColors.text_color_description)),
          ]),
    ),
  );
}

Widget DescriptionHeader(int index) {
  switch (index) {
    case 0:
      {
        return DescriptionTextsOne();
      }
    case 1:
      {
        return DescriptionTextsTwo();
      }
    case 2:
      {
        return DescriptionTextsThree();
      }
    default:
      {
        return DescriptionTextsOne();
      }
  }
}

Widget DescriptionInfo(int index) {
  String description;
  switch (index) {
    case 0:
      {
        description = Strings.info_1;
      }
      break;
    case 1:
      {
        description = Strings.info_2;
      }
      break;
    case 2:
      {
        description = Strings.info_3;
      }
      break;
    default:
      {
        description = Strings.info_1;
      }
  }
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 60.0),
    child: Text(
      description,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.description_color,
        decoration: TextDecoration.none,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget NextButton({required int index, required void Function() onTapButton}){
  return GestureDetector(
    child: Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: AppColors.button_bg_color, borderRadius: BorderRadius.circular(20)),
      child: Image(image: AssetImage("assets/next.png"),color: AppColors.text_color,),
    ),
    onTap: onTapButton,
  );
}