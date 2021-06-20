library wind;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'wind.g.dart';

abstract class Wind implements Built<Wind, WindBuilder> {
  Wind._();

  factory Wind([Function(WindBuilder b) updates]) = _$Wind;

  @BuiltValueField(wireName: 'speed')
  double? get speed;

  @BuiltValueField(wireName: 'deg')
  int? get deg;

  String toJson() {
    return jsonEncode(
      serializers.serializeWith(Wind.serializer, this),
    );
  }

  static Wind? fromJson(String jsonString) {
    return serializers.deserializeWith(Wind.serializer, jsonDecode(jsonString));
  }

  static List<Wind> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Wind>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Wind> get serializer => _$windSerializer;
}
