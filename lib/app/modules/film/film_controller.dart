import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';

class FilmController extends GetxController {
  Films? selectedfilm;
  // FilmController(this.film);
  final Map<Films, Rx<Color>> colors = {};

  void updatethisfilm(Films film) {
    selectedfilm = film;
    update();
  }

  Rx<Color>? selectedColor() {
    if(selectedfilm != null && colors.containsKey(selectedfilm!)) {
      return colors[selectedfilm!];
    }
    return null;
  }

  final MyController myController = Get.find();
  // Films film = Get.arguments;
  // final color = Rx<Color>(Colors.white);

  void selectColor() {
    if (selectedfilm != null) {
      final film = selectedfilm!;
      if (!colors.containsKey(film)) {
        colors[film] = Rx<Color>(Colors.white);
      }
      if (myController.myfilms.contains(film)) {
        colors[film]!.value = colorO;
      } else {
        colors[film]!.value = Colors.white;
      }
    }
  }
}
