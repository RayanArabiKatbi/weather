library weather;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  Weather._();

  factory Weather([Function(WeatherBuilder b) updates]) = _$Weather;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'main')
  String? get main;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'icon')
  String? get icon;

  String toJson() {
    return jsonEncode(serializers.serializeWith(
      Weather.serializer,
      this,
    ));
  }

  static Weather? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Weather.serializer, jsonDecode(jsonString));
  }

  static List<Weather> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Weather>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
