import 'package:get/get.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/models/movies/movies.dart';
import 'package:kinopoisk/app/repositories/api_repository.dart';

class FirstController extends GetxController {
  ApiRepository apiRepository;
  FirstController(this.apiRepository);

  // RxList<Movies> movies = <Movies>[].obs;
  // RxString string = 'ekmd'.obs;

  // @override
  // void onInit() {
  //   movies.addAll([
  //     Movies(picture: 'https://cdn-icons-png.flaticon.com/128/4526/4526817.png', name: 'Тест на беременность', category: 8.2, year: 2014, genre: 'мелодрама', country: 'Россия', description: pregnant)
  //   ]);
  //   super.onInit();
  // }

  final _films = ApiResponse<List<Films>>.loading().obs;

  @override
  void onInit() {
    getFilms();
    super.onInit();
  }

  Future<void> getFilms() async {
    _films.value = ApiResponse<List<Films>>.loading();
    _films.value = await apiRepository.getFilms();
  }
  ApiResponse<List<Films>> get films => _films.value;
}

// String pregnant = '''
// В экспериментальный научно-медицинский центр приходит новая заведующая акушерским отделением – молодая и талантливая Наталья Бахметьева. В первый же день работы она вызывает бурю эмоций у своих новых коллег. Наташа восхищает их своим бесспорным профессионализмом и возмущает своим жестким характером.

// Наташа не придает значения мгновенно появившимся вокруг нее поклонникам и завистникам. Она привыкла жить независимо и замкнуто, полагаться только на себя. Такой образ жизни стал следствием ее многолетнего тайного романа с Юрием Колмогоровым, крупным чиновником, который когда-то был её научным руководителем в институте.

// Осознав, что ради неё Юрий не уйдёт из семьи, Наташа решает порвать с ним, переезжает в другой район, выходит на новую должность и как будто начинает жизнь с чистого листа. Скоро Наташа узнает, что беременна от Юрия. Героиня встает перед тяжёлым выбором: оставить ребенка или прервать беременность?

// Спасая каждый день жизни, помогая пациенткам принять правильное решение, Наташа не знает, как поступить ей самой…
// ''';