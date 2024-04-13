import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';

class ApiService extends GetxService {
  Future<ApiService> init() async {
    return this;
  }

  var client = Dio(
    BaseOptions(baseUrl: 'https://api.kinopoisk.dev/v1.4/'),
  );

  Future<ApiResponse<T>> getMovies<T>(
      {int? year, String? name, String? description}) async {
    try {
      final Map<String, dynamic> queryParameters = {};
      if (year != null) queryParameters['year'] = year;
      if (name != null) queryParameters['name'] = name;
      if (description != null) queryParameters['description'] = description;
      var response = await client.get(
        '/movie',
        queryParameters: queryParameters,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'X-Api-Key': 'Y0D2K0E-XKSMMYJ-JZMZG75-FR8ZTSR'
          },
        ),
      );
      return ApiResponse.success(response.data);
    } on DioException catch (e) {
      return ApiResponse.failed(e.message ?? "Dio error", e.error);
    } catch (e) {
      printError(info: e.toString());
      return ApiResponse.failed(e.toString(), e);
    }
  }
}