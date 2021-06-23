library wind_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'wind_name.g.dart';

abstract class WindName implements Built<WindName, WindNameBuilder> {
  WindName._();

  factory WindName([Function(WindNameBuilder b) updates]) = _$WindName;

  @BuiltValueField(wireName: 'speed')
  double? get speed;

  @BuiltValueField(wireName: 'deg')
  int? get deg;

  @BuiltValueField(wireName: 'gust')
  double? get gust;

  String toJson() {
    return jsonEncode(serializers.serializeWith(WindName.serializer, this));
  }

  static WindName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WindName.serializer, jsonDecode(jsonString));
  }

  static List<WindName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<WindName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<WindName> get serializer => _$windNameSerializer;
}
