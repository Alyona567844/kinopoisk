import 'package:get/get.dart';
import 'package:kinopoisk/app/modules/init/init_binding.dart';
import 'package:kinopoisk/app/modules/init/init_page.dart';
import 'package:kinopoisk/app/modules/main/main_binding.dart';
import 'package:kinopoisk/app/modules/main/main_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INIT,
      page: () => const InitPage(),
      binding: InitBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
  ];
}
