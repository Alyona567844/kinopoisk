import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/film/film_page.dart';
import 'package:kinopoisk/app/modules/my/my_controller.dart';

class MyPage extends GetView<MyController> {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Моё',
                style: textMain,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Буду смотреть',
                    style: textB,
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            Obx(
              () => GestureDetector(
                onTap: () => Get.to(()=>FilmPage()),
                child: SizedBox(
                  height: 225,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: controller.myfilms.length,
                    itemBuilder: (BuildContext context, int index) {
                      var film = controller.myfilms[index];
                      List<String> genres =
                          film.genres.map((genre) => genre.name).toList();
                      String genrStr = genres[0];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 0, top: 0, bottom: 67),
                            child: Container(
                              width: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(film.poster.url),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: MediaQuery.of(context).size.width * 0.046,
                            top: MediaQuery.of(context).size.width * 0.01,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 1),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 18, 164, 64),
                              ),
                              child: Text(
                                '${film.rating.imdb}',
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: MediaQuery.of(context).size.width * 0.0381,
                            child: Container(
                              color: Colors.white,
                              width: 110,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    film.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    genrStr,
                                    style: const TextStyle(
                                      color: colorG,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Загрузки',
                    style: textB,
                  ),
                  Text(
                    '0',
                    style: TextStyle(color: colorG),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                decoration: const BoxDecoration(color: containerColor),
                height: 240,
                width: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/128/0/532.png',
                      color: colorG,
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(height: 10),
                    const Flexible(
                      child: Text(
                        'Загружайте фильмы и сериалы, чтобы смотреть из без интернета',
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: const Text(
                        'Выбрать, что загрузить',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Покупки',
                    style: textB,
                  ),
                  Text(
                    '0',
                    style: TextStyle(color: colorG),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Папки',
                    style: textB,
                  ),
                  Text(
                    'Все',
                    style: textO,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                height: 150,
                width: 200,
                decoration: const BoxDecoration(color: containerColor),
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/128/32/32557.png',
                  height: 30,
                  width: 30,
                  color: colorG,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Любимые фильмы',
                style: textB,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
