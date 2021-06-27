library weather_lat_long;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';
import 'package:weather/models/weather_lat_long_model/clouds.dart';
import 'package:weather/models/weather_lat_long_model/coord.dart';
import 'package:weather/models/weather_lat_long_model/main.dart';
import 'package:weather/models/weather_lat_long_model/sys.dart';
import 'package:weather/models/weather_lat_long_model/weather.dart';
import 'package:weather/models/weather_lat_long_model/wind.dart';

part 'weather_lat_long.g.dart';

abstract class WeatherLatLong
    implements Built<WeatherLatLong, WeatherLatLongBuilder> {
  WeatherLatLong._();

  factory WeatherLatLong([Function(WeatherLatLongBuilder b) updates]) =
      _$WeatherLatLong;

  @BuiltValueField(wireName: 'coord')
  Coord? get coord;

  @BuiltValueField(wireName: 'weather')
  BuiltList<Weather>? get weather;

  @BuiltValueField(wireName: 'base')
  String? get base;

  @BuiltValueField(wireName: 'main')
  Main? get main;

  @BuiltValueField(wireName: 'visibility')
  int? get visibility;

  @BuiltValueField(wireName: 'wind')
  Wind? get wind;

  @BuiltValueField(wireName: 'clouds')
  Clouds? get clouds;

  @BuiltValueField(wireName: 'dt')
  int? get dt;

  @BuiltValueField(wireName: 'sys')
  Sys? get sys;

  @BuiltValueField(wireName: 'timezone')
  int? get timezone;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'cod')
  int? get cod;

  String toJson() {
    return jsonEncode(
      serializers.serializeWith(WeatherLatLong.serializer, this),
    );
  }

  static WeatherLatLong fromJson(String jsonString) {
    return serializers
        .deserializeWith(WeatherLatLong.serializer, jsonDecode(jsonString))!
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

  static List<WeatherLatLong> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<WeatherLatLong>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<WeatherLatLong> get serializer =>
      _$weatherLatLongSerializer;
}
