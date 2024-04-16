import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/modules/film/film_controller.dart';
import 'package:kinopoisk/app/modules/film/film_page.dart';
import 'package:kinopoisk/app/modules/media/media_controller.dart';

class MediaPage extends GetView<MediaController> {
  const MediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final filmController = Get.put(FilmController());
    return Scaffold(
      // appBar: AppBar(title: Text('MediaPage')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Text(
                'Медиа',
                style: textMain,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Пощекотать нервишки',
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
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> horror = lists['horror'] ?? [];
                  return SizedBox(
                    height: 225,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: horror.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = horror[index];
                        List<String> genres =
                            film.genres.map((genre) => genre.name).toList();
                        String genrStr = genres[0];
                        return GestureDetector(
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(() => FilmPage());
                          },
                          child: Stack(
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0381,
                                child: Container(
                                  color: Colors.white,
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 14, color: colorG),
                                      ),
                                    ],
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
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: buttonStyle,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/8161/8161506.png',
                          width: 20,
                          height: 20,
                          color: Colors.black,
                        ),
                        const Text('Кинотеатры', style: catText),
                      ],
                    ),
                  ),
                  const SizedBox(width: 45),
                  CircleAvatar(
                    backgroundColor: containerColor,
                    radius: 23,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/149/149973.png',
                        width: 18,
                        height: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Что-то интересное',
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
              () => controller.films.when(
                loading: () => const Text("Status:loading"),
                success: (Map<String, List<Films>> lists) {
                  List<Films> interesting = lists['interesting'] ?? [];
                  return SizedBox(
                    height: 225,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: interesting.length,
                      itemBuilder: (BuildContext context, int index) {
                        var film = interesting[index];
                        List<String> genres =
                            film.genres.map((genre) => genre.name).toList();
                        String genrStr = genres[0];
                        return GestureDetector(
                          onTap: () {
                            filmController.updatethisfilm(film);
                            Get.to(() => FilmPage());
                          },
                          child: Stack(
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
                                left:
                                    MediaQuery.of(context).size.width * 0.0381,
                                child: Container(
                                  color: Colors.white,
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 14, color: colorG),
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}
