import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/app/constants/constants.dart';
import 'package:kinopoisk/app/modules/profile/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 242),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(105.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: containerColor),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/3106/3106921.png',
                        color: colorG,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Container(
                height: 220,
                decoration: const BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: Text(
                          'Фильмы и сериалы по подписке Плюс',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Flexible(
                        child: Text(
                          'А ещё музыка и подкасты, кешбэк баллами в сервисах Яндекса',
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 85, 85),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.pink,
                                Colors.deepPurple,
                                Colors.indigo,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Оформить',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                decoration: const BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/128/324/324687.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    const Text('Ввести промокод'),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                height: 130,
                decoration: const BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Настройки'),
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/709/709586.png',
                          width: 20,
                          height: 20,
                          color: colorG,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Поддержка'),
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/709/709586.png',
                          width: 20,
                          height: 20,
                          color: colorG,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('О приложении'),
                        Image.network(
                          'https://cdn-icons-png.flaticon.com/128/709/709586.png',
                          width: 20,
                          height: 20,
                          color: colorG,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Выйти из аккаунта', style: textB)
          ],
        ),
      ),
    );
  }
}
