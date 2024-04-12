import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/media/media_controller.dart';

class MediaBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<MediaController>(() => MediaController());
  }
}