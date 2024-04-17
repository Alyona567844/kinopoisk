import 'package:get/get.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/services/api_service.dart';

class ApiRepository {
  final ApiService apiService = Get.find();

  Future<ApiResponse<Map<String, List<Films>>>> getFilms() async {
    ApiResponse<dynamic> data =
        await apiService.getMovies('v1.4/movie?limit=100');
    return data.when(
      loading: () => ApiResponse<Map<String, List<Films>>>.loading(),
      success: (jsonData) {
        var filmsJson = jsonData['docs'] as List<dynamic>;
        var films = filmsJson.map((json) => Films.fromJson(json)).toList();

        List<Films> sortNew = [];
        for (var el in films) {
          if (el.year >= 2022) {
            sortNew.add(el);
          }
        }

        List<Films> anime = [];
        for (var el in films) {
          if (el.type == 'anime') {
            anime.add(el);
          }
        }

        List<Films> cartoon = [];
        for (var el in films) {
          if (el.type == 'cartoon' || el.type == 'animated-series') {
            cartoon.add(el);
          }
        }

        List<Films> serials = [];
        for (var el in films) {
          if (el.type == 'tv-series' && !sortNew.contains(el)) {
            serials.add(el);
          }
        }

        List<Films> horror = [];
        for (var el in films) {
          if (el.genres.any((element) => element.name == 'ужасы')) {
            horror.add(el);
          }
        }

        List<Films> interesting = [];
        for (var el in films) {
          if (el.genres.any((element) => element.name == 'драма') ||
              el.genres.any((element) => element.name == 'триллер') ||
              el.genres.any((element) => element.name == 'боевик') ||
              el.genres.any((element) => element.name == 'криминал')) {
            interesting.add(el);
          }
        }

        List<Films> movies = [];
        for (var el in films) {
          if (el.type == 'movie' &&
              !sortNew.contains(el) &&
              !interesting.contains(el)) {
            movies.add(el);
          }
        }

        var sortedLists = {
          'films': films,
          'sortNew': sortNew,
          'movies': movies,
          'anime': anime,
          'cartoon': cartoon,
          'serials': serials,
          'horror': horror,
          'interesting': interesting
        };

        return ApiResponse<Map<String, List<Films>>>.success(sortedLists);
      },
      failed: (e, o) => ApiResponse<Map<String, List<Films>>>.failed(e, o),
    );
  }
}
