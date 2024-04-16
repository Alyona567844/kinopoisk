import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/modules/film/film_controller.dart';
import 'package:kinopoisk/app/modules/film/film_page.dart';
import 'package:kinopoisk/app/modules/first/first_controller.dart';

class FirstPage extends GetView<FirstController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final filmController = Get.put(FilmController());
    String svgString = '''
    <svg viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3.6111 0.357512V5.82496L7.37527 0.357512H11.7579L5.39166 6.76497L17.0153 0.357512V4.42574L6.5787 8.29056L17.0153 7.32589V11.1907L6.5787 10.226L17.0153 14.0909V18.1591L5.39166 11.7516L11.7579 18.1591H7.37214L3.60798 12.6916V18.1591H0V0.357512H3.6111Z" fill="black"/>
    </svg>
    ''';
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 27,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SvgPicture.string(
                svgString,
                height: 35,
                width: 35,
                color: colorO,
              ),
              const SizedBox(width: 13),
              const Text(
                'Моё кино',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 13),
              const Text('Спорт', style: textA),
              const SizedBox(width: 13),
              const Text('Каналы', style: textA),
              const SizedBox(width: 13),
              const Text('Подписки', style: textA),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.width * 1.3,
                  width: double.infinity,
                  child: Image.network(
                    'https://thumbs.dfs.ivi.ru/storage9/contents/5/9/40a39dd8642747d9e852a93d41fe0c.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.06,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 50),
                            backgroundColor: colorO),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/128/59/59385.png',
                              width: 22,
                              height: 22,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Смотреть',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/7446/7446778.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
                        radius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/58/58801.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Фильмы для вас',
                      style: textB,
                    ),
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            Obx(
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> movies = lists['movies'] ?? [];
                  return SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: movies.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = movies[index];
                        return GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //       //     GetBuilder<FilmController>(
                          //       //   init: FilmController(film),
                          //       //   builder: (_) {
                          //       //     return FilmPage();
                          //       //   },
                          //       // ),
                          //       FilmPage(film: film),
                          //       maintainState: true,
                          //     ),
                          //   );
                          // },
                          // onTap: () => Get.toNamed('film', arguments: film),
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(()=>FilmPage());
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 0, top: 0, bottom: 46),
                                child: Container(
                                  width: 145,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(film.poster.url),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.035,
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0264,
                                child: Container(
                                  color: Colors.white,
                                  width: 150,
                                  child: Text(
                                    film.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
                failed: (message, error) => Column(
                  children: [
                    const Text("Status error"),
                    Text(message),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Новинки',
                      style: textB,
                    ),
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            Obx(
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> sortNew = lists['sortNew'] ?? [];
                  return SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: sortNew.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = sortNew[index];
                        return GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //           GetBuilder<FilmController>(
                          //         init: FilmController(film),
                          //         builder: (_) {
                          //           return FilmPage();
                          //         },
                          //       ),
                          //       // FilmPage(film: film),
                          //       maintainState: true,
                          //     ),
                          //   );
                          // },
                          // onTap: () => Get.toNamed('film', arguments: film),
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(()=>FilmPage());
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 0, top: 0, bottom: 46),
                                child: Container(
                                  width: 145,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(film.poster.url),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.035,
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0264,
                                child: Container(
                                  color: Colors.white,
                                  width: 150,
                                  child: Text(
                                    film.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
                failed: (message, error) => Column(
                  children: [
                    const Text("Status error"),
                    Text(message),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Сериалы на ваш вкус',
                      style: textB,
                    ),
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            Obx(
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> serials = lists['serials'] ?? [];
                  return SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: serials.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = serials[index];
                        return GestureDetector(
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(()=>FilmPage());
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 0, top: 0, bottom: 46),
                                child: Container(
                                  width: 145,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(film.poster.url),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.035,
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0264,
                                child: Container(
                                  color: Colors.white,
                                  width: 150,
                                  child: Text(
                                    film.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
                failed: (message, error) => Column(
                  children: [
                    const Text("Status error"),
                    Text(message),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Для любителей мультфильмов',
                      style: textB,
                    ),
                  ),
                  Text(
                    'Все',
                    style: textO,
                  )
                ],
              ),
            ),
            Obx(
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> cartoon = lists['cartoon'] ?? [];
                  return SizedBox(
                    height: 266,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: cartoon.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = cartoon[index];
                        return GestureDetector(
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(()=>FilmPage());
                          },
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 0, top: 0, bottom: 46),
                                child: Container(
                                  width: 145,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(film.poster.url),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.035,
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0264,
                                child: Container(
                                  color: Colors.white,
                                  width: 150,
                                  child: Text(
                                    film.name,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
                failed: (message, error) => Column(
                  children: [
                    const Text("Status error"),
                    Text(message),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
