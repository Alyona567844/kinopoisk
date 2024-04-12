import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<Color> iconColor = Colors.grey.obs;

  RxInt selectPage = 0.obs;

  void pageTap(int index) {
    selectPage.value = index;
  }
}