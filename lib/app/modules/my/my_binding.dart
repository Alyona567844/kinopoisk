import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';

class MyBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<MyController>(() => MyController());
  }
}