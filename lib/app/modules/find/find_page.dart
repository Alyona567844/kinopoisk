import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/find/find_controller.dart';

class FindPage extends GetView<FindController> {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: containerColor,
            hintText: 'Фильмы, сериалы, персоны',
            prefixIcon: IconButton(
              onPressed: () {},
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/149/149852.png',
                color: colorG,
                width: 20,
                height: 20,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/512/512158.png',
                color: colorG,
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Категории',
                    style: textB,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Фильмы', style: catText),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Онлайн-кинотеатр', style: catText),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Жанры', style: catText),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Страны', style: catText),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Годы', style: catText),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Критика', style: catText),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Сериалы', style: catText),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Сборы', style: catText),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Премии', style: catText),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text('Направления', style: catText),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Популярные персоны',
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
              () => SizedBox(
                height: 225,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: controller.persons.length,
                  itemBuilder: (BuildContext context, int index) {
                    var film = controller.persons[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 0, top: 0, bottom: 67),
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(film.photo ?? ''),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: MediaQuery.of(context).size.width * 0.038,
                          child: Container(
                            color: Colors.white,
                            width: 110,
                            child: Text(
                              film.name ?? '',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
