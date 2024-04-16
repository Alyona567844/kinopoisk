import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/find/find_controller.dart';
import 'package:kinopoisk/app/modules/find/find_page.dart';
import 'package:kinopoisk/app/modules/first/first_controller.dart';
import 'package:kinopoisk/app/modules/first/first_page.dart';
import 'package:kinopoisk/app/modules/main/main_controller.dart';
import 'package:kinopoisk/app/modules/media/media_controller.dart';
import 'package:kinopoisk/app/modules/media/media_page.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';
import 'package:kinopoisk/app/modules/my/my_page.dart';
import 'package:kinopoisk/app/modules/profile/profile_controller.dart';
import 'package:kinopoisk/app/modules/profile/profile_page.dart';
import 'package:kinopoisk/app/repositories/api_repository.dart';

class MainPage extends GetView<MainController> {

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectPage.value,
          children: [
            GetBuilder<FirstController>(
              init: FirstController(ApiRepository()),
              builder: (_) {
                return FirstPage();
              },
            ),
            GetBuilder<MediaController>(
              init: MediaController(),
              builder: (_) {
                return const MediaPage();
              },
            ),
            GetBuilder<MyController>(
              init: MyController(),
              builder: (_) {
                return const MyPage();
              },
            ),
            GetBuilder<FindController>(
              init: FindController(),
              builder: (_) {
                return const FindPage();
              },
            ),
            GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (_) {
                return const ProfilePage();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorO,
          // unselectedItemColor: colorG,
          // unselectedLabelStyle: const TextStyle(color: colorG),
          // selectedLabelStyle: const TextStyle(color: colorO),
          // selectedFontSize: 10.0,
          // unselectedFontSize: 20.0,
          // showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/6529/6529015.png',
                color: controller.selectPage.value == 0 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Главное',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13652/13652429.png',
                color: controller.selectPage.value == 1 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Медиа',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2791/2791737.png',
                color: controller.selectPage.value == 2 ? colorO : colorG,
                width: 32,
                height: 32,
              ),
              label: 'Моё',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/149/149852.png',
                color: controller.selectPage.value == 3 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/4526/4526817.png',
                color: controller.selectPage.value == 4 ? colorO : colorG,
                width: 24,
                height: 24,
              ),
              label: 'Профиль',
            ),
          ],
          currentIndex: controller.selectPage.value,
          onTap: (index) => controller.pageTap(index),
        ),
      ),
    );
  }
}
