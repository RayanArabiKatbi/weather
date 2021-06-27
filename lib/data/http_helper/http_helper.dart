import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:weather/core/constants.dart';
import 'package:weather/data/http_helper/iHttp_helper.dart';
import 'package:weather/models/serializer/serializer.dart';
import 'package:weather/models/weather_lat_long_model/weather_lat_long.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;
  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
      ),
    );

    _dio.interceptors.add(
      CookieManager(cookieJar),
    );
  }

  @override
  Future<WeatherLatLong?> getLatLongWeather(
    double? lat,
    double? long,
  ) async {
    try {
      final response = await _dio.get(
        '?lat=$lat&lon=$long&appid=$BaseUrlApiKey&units=metric',
      );
      if (response.statusCode == 200) {
        final dynamic baseResponse = serializers.deserialize(
          json.decode(response.data),
          specifiedType: FullType(WeatherLatLong),
        );
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw Exception();
        }
      } else {
        throw Exception();
      }
    } catch (e) {}
  }
}
