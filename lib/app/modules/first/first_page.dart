import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/first/first_controller.dart';

class FirstPage extends GetView<FirstController> {
  final VoidCallback onButtonPressed;

  const FirstPage({super.key, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    String svgString = '''
    <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
    </svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 27,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SvgPicture.string(
                svgString,
                height: 35,
                width: 35,
                color: colorO,
              ),
              const SizedBox(width: 13),
              const Text(
                'Моё кино',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 13),
              const Text('Спорт', style: textA),
              const SizedBox(width: 13),
              const Text('Каналы', style: textA),
              const SizedBox(width: 13),
              const Text('Подписки', style: textA),
            ],
          ),
        ),
      ),
    );
  }
}