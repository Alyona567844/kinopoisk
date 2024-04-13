import 'dart:convert';

import 'package:get/get.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';
import 'package:kinopoisk/app/models/films/films.dart';
import 'package:kinopoisk/app/services/api_service.dart';

class ApiRepository {
  final ApiService apiService = Get.find();

  Future<ApiResponse<List<Films>>> getFilms() async {
    ApiResponse<dynamic> data = await apiService.getMovies();
    print(data);
    return data.when(
      loading: () => ApiResponse<List<Films>>.loading(),
      success: (jsonData) {
        // List<Films> films = [];
        // for (var el in jsonData) {
        //   var product = Films.fromJson(el);
        //   films.add(product);
        // }
        var filmsJson = jsonData['docs'] as List<dynamic>;
        var films = filmsJson.map((json) => Films.fromJson(json)).toList();
        return ApiResponse<List<Films>>.success(films);
      },
      // success: (jsonData) {
      //   print(jsonData);
      //   if (jsonData is List) {
      //     List<Films> films =
      //         jsonData.map((json) => Films.fromJson(json)).toList();
      //     return ApiResponse<List<Films>>.success(films);
      //   } else {
      //     return ApiResponse<List<Films>>.failed(
      //         "Unexpected data format", null);
      //   }
      // },
      failed: (e, o) => ApiResponse<List<Films>>.failed(e, o),
    );
  }
}
