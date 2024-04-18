import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/film/film_controller.dart';
import 'package:kinopoisk/app/modules/main/main_controller.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';

class FilmPage extends GetView<FilmController> {
  final MainController mainController = Get.find();
  final MyController myController = Get.find();

  FilmPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres =
        controller.selectedfilm?.genres.map((genre) => genre.name).toList() ??
            <String>[];
    String genrStr = genres.join(", ");
    List<String> countries = controller.selectedfilm?.countries
            .map((country) => country.name)
            .toList() ??
        <String>[];
    String countryStr = countries.join(", ");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: 500,
              height: 550,
              child: Column(
                children: [
                  SizedBox(
                    height: 330,
                    child: Image.network(
                      controller.selectedfilm?.poster.url ?? '',
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    controller.selectedfilm?.name ?? '',
                    style: const TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '${controller.selectedfilm?.year}, $genrStr, $countryStr, ${controller.selectedfilm?.ageRating}+',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 33,
                        child: IconButton(
                          onPressed: () {},
                          icon: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/11520/11520084.png',
                                width: 25,
                                height: 25,
                                color: Colors.white,
                              ),
                              const Text(
                                'Оценить',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          if (controller.selectedfilm != null) {
                            final self = controller.selectedfilm!;
                            if (myController.myfilms.contains(self)) {
                              myController.deletefilm(self);
                            } else {
                              myController.addfilm(controller.selectedfilm!);
                            }
                            controller.selectColor();
                          }
                        },
                        child: Column(
                          children: [
                            Obx(() => Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/7446/7446778.png',
                                  width: 25,
                                  height: 25,
                                  color: controller
                                          .colors[controller.selectedfilm]
                                          ?.value ??
                                      Colors.white,
                                  // color: controller.selectedColor()?.value ??
                                  //     Colors.white,
                                  // color: controller.selectedfilm != null
                                  //     ? controller
                                  //             .colors[controller.selectedfilm!]
                                  //             ?.value ??
                                  //         Colors.white
                                  //     : Colors.white,
                                  // color: myController.myfilms
                                  //         .contains(controller.selectedfilm)
                                  //     ? colorO
                                  //     : colorG,
                                )),
                            Obx(() => Text(
                                  'Буду смотреть',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: controller
                                            .colors[controller.selectedfilm]
                                            ?.value ??
                                        Colors.white,
                                    // color: controller.selectedColor()?.value ??
                                    //     Colors.white,
                                    // color: controller.selectedfilm != null
                                    //     ? controller
                                    //             .colors[controller.selectedfilm!]
                                    //             ?.value ??
                                    //         Colors.white
                                    //     : Colors.white,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        minRadius: 33,
                        child: IconButton(
                          onPressed: () {},
                          icon: Column(
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/2990/2990295.png',
                                width: 25,
                                height: 25,
                                color: Colors.white,
                              ),
                              const Text(
                                'Поделиться',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 35,
                        child: IconButton(
                          onPressed: () {},
                          icon: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/3426/3426508.png',
                                width: 25,
                                height: 25,
                                color: Colors.white,
                              ),
                              const Text(
                                'Ещё',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(controller.selectedfilm?.description ?? ''),
            )
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
                color: mainController.selectPage.value == 0 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Главное',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/13652/13652429.png',
                color: mainController.selectPage.value == 1 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Медиа',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/2791/2791737.png',
                color: mainController.selectPage.value == 2 ? colorO : colorG,
                width: 32,
                height: 32,
              ),
              label: 'Моё',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/149/149852.png',
                color: mainController.selectPage.value == 3 ? colorO : colorG,
                width: 22,
                height: 22,
              ),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/4526/4526817.png',
                color: mainController.selectPage.value == 4 ? colorO : colorG,
                width: 24,
                height: 24,
              ),
              label: 'Профиль',
            ),
          ],
          currentIndex: mainController.selectPage.value,
          onTap: (index) {
            mainController.pageTap(index);
            Get.back();
          },
        ),
      ),
    );
  }
}
