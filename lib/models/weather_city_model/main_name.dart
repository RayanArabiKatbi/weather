library main_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'main_name.g.dart';

abstract class MainName implements Built<MainName, MainNameBuilder> {
  MainName._();

  factory MainName([Function(MainNameBuilder b) updates]) = _$MainName;

  @BuiltValueField(wireName: 'temp')
  double? get temp;

  @BuiltValueField(wireName: 'feels_like')
  double? get feelsLike;

  @BuiltValueField(wireName: 'temp_min')
  double? get tempMin;

  @BuiltValueField(wireName: 'temp_max')
  double? get tempMax;

  @BuiltValueField(wireName: 'pressure')
  int? get pressure;

  @BuiltValueField(wireName: 'humidity')
  int? get humidity;

  String toJson() {
    return jsonEncode(serializers.serializeWith(MainName.serializer, this));
  }

  static MainName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        MainName.serializer, jsonDecode(jsonString));
  }

  static List<MainName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<MainName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<MainName> get serializer => _$mainNameSerializer;
}
