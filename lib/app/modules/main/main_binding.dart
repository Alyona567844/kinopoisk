import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/main/main_controller.dart';

class MainBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<MainController>(() => MainController());
  }
}