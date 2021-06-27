library weather_city;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';
import 'package:weather/models/weather_city_model/cloud_name.dart';
import 'package:weather/models/weather_city_model/coord_name.dart';
import 'package:weather/models/weather_city_model/main_name.dart';
import 'package:weather/models/weather_city_model/sys_name.dart';
import 'package:weather/models/weather_city_model/weather_name.dart';
import 'package:weather/models/weather_city_model/wind_name.dart';

part 'weather_city.g.dart';

// {"coord":{"lon":-0.1257,"lat":51.5085},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"base":"stations","main":{"temp":12.79,"feels_like":12.14,"temp_min":11.17,"temp_max":14.05,"pressure":1020,"humidity":77},"visibility":10000,"wind":{"speed":1.34,"deg":62,"gust":4.47},"clouds":{"all":20},"dt":1624349996,"sys":{"type":2,"id":268730,"country":"GB","sunrise":1624333400,"sunset":1624393297},"timezone":3600,"id":2643743,"name":"London","cod":200}

/// WeatherCity
abstract class WeatherCity implements Built<WeatherCity, WeatherCityBuilder> {
  WeatherCity._();

  factory WeatherCity([Function(WeatherCityBuilder b) updates]) = _$WeatherCity;

  @BuiltValueField(wireName: 'coord')
  CoordName? get coord;

  @BuiltValueField(wireName: 'weather')
  BuiltList<WeatherName>? get weather;

  @BuiltValueField(wireName: 'base')
  String? get base;

  @BuiltValueField(wireName: 'main')
  MainName? get main;

  @BuiltValueField(wireName: 'visibility')
  int? get visibility;

  @BuiltValueField(wireName: 'wind')
  WindName? get wind;

  @BuiltValueField(wireName: 'clouds')
  CloudName? get clouds;

  @BuiltValueField(wireName: 'dt')
  int? get dt;

  @BuiltValueField(wireName: 'sys')
  SysName? get sys;

  @BuiltValueField(wireName: 'timezone')
  int? get timezone;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'cod')
  int? get cod;

  String toJson() {
    return jsonEncode(serializers.serializeWith(WeatherCity.serializer, this));
  }

  static WeatherCity fromJson(String jsonString) {
    return serializers
        .deserializeWith(WeatherCity.serializer, jsonDecode(jsonString))!
        .rebuild((b) => b
          ..coord.lon ??= 0
          ..coord.lat ??= 0
          ..weather
          ..base ??= ''
          ..main.temp ??= 0
          ..main.feelsLike ??= 0
          ..main.tempMin ??= 0
          ..main.tempMax ??= 0
          ..main.pressure ??= 0
          ..main.humidity ??= 0
          ..visibility ??= 0
          ..wind.speed ??= 0
          ..wind.deg ??= 0
          ..wind.gust ??= 0
          ..clouds.all ??= 0
          ..dt ??= 0
          ..sys.type ??= 0
          ..sys.id ??= 0
          ..sys.country ??= ''
          ..sys.sunrise ??= 0
          ..sys.sunset ??= 0
          ..timezone ??= 0
          ..id ??= 0
          ..name ??= ''
          ..cod ??= 0);
  }

  static List<WeatherCity> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<WeatherCity>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<WeatherCity> get serializer => _$weatherCitySerializer;
}
