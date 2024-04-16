import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/find/find_controller.dart';

class FindPage extends GetView<FindController> {
  const FindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FindPage')),
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
                      ElevatedButton(
                        onPressed: () {},
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
                      ElevatedButton(
                        onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
