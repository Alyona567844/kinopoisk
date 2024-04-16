import 'package:get/get.dart';
import 'package:kinopoisk/app/models/films/films.dart';

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
}