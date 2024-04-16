import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/modules/film/film_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyController extends GetxController {
  final List<Films> myfilms = <Films>[].obs;

  void addfilm(Films film) {
    myfilms.add(film);
    update();
  }

  void deletefilm(Films film) {
    myfilms.remove(film);
    update();
  }
  // Future<void> saveColor() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('color', color.value.value);
  // }
}