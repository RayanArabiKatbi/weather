library main;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'main.g.dart';

abstract class Main implements Built<Main, MainBuilder> {
  Main._();

  factory Main([Function(MainBuilder b) updates]) = _$Main;

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
    return jsonEncode(serializers.serializeWith(
      Main.serializer,
      this,
    ));
  }

  static Main? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Main.serializer,
      jsonDecode(jsonString),
    );
  }

  static List<Main> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Main>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Main> get serializer => _$mainSerializer;
}
