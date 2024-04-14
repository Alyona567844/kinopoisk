import 'package:get/get.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/repositories/api_repository.dart';

class FirstController extends GetxController {
  ApiRepository apiRepository;
  FirstController(this.apiRepository);

  final _films = ApiResponse<Map<String, List<Films>>>.loading().obs;

  @override
  void onInit() {
    getFilms();
    super.onInit();
  }

  Future<void> getFilms() async {
    _films.value = ApiResponse<Map<String, List<Films>>>.loading();
    _films.value = await apiRepository.getFilms();
  }
  ApiResponse<Map<String, List<Films>>> get films => _films.value;
}
