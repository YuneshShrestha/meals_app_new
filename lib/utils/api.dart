import 'package:dio/dio.dart';

class Api {
  static var dio = Dio(
    BaseOptions(
      baseUrl: 'https://www.themealdb.com/api/json/v1/1/',
    ),
  );
}