import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:kinopoisk/app/models/api_response/api_response.dart';

class ApiService extends GetxService {

  var client = Dio(
    BaseOptions(baseUrl: 'https://api.kinopoisk.dev/'),
  );

  Future<ApiResponse<T>> getMovies<T>(String url) async {
    try {
      var response = await client.get(
        url,
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
