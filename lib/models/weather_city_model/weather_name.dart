library weather_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'weather_name.g.dart';

abstract class WeatherName implements Built<WeatherName, WeatherNameBuilder> {
  WeatherName._();

  factory WeatherName([Function(WeatherNameBuilder b) updates]) = _$WeatherName;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'main')
  String? get main;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'icon')
  String? get icon;

  String toJson() {
    return jsonEncode(serializers.serializeWith(WeatherName.serializer, this));
  }

  static WeatherName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WeatherName.serializer, jsonDecode(jsonString));
  }

  static List<WeatherName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<WeatherName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<WeatherName> get serializer => _$weatherNameSerializer;
}
