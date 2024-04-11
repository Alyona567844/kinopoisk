import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/init/init_controller.dart';

class InitBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<InitController>(() => InitController());
  }
}