import 'package:get/get.dart';
import 'package:kinopoisk/app/models/persons/persons.dart';

class FindController extends GetxController {
  final RxList<Persons> persons = <Persons>[].obs;

  @override
  void onInit() {
    persons.addAll(
      [
        Persons(
          photo:
              'https://www.kinofilms.ua/images/person/big/120101.jpg',
          name: 'Элла Пернелл',
        ),
        Persons(
          photo:
              'https://www.kinofilms.ua/images/person/big/65239.jpg',
          name: 'Алекс Гарленд',
        ),
        Persons(
          photo:
              'https://www.kinofilms.ua/images/person/big/15673.jpg',
          name: 'Остин Батлер',
        ),
        Persons(
          photo:
              'https://www.kinofilms.ua/images/person/big/98.jpg',
          name: 'Кирстен Данст',
        ),
        Persons(
          photo:
              'https://www.kinofilms.ua/images/person/big/120123.jpg',
          name: 'Дени Вильнёв',
        ),
      ],
    );
    super.onInit();
  }
}
