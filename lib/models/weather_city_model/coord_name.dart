library coord_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'coord_name.g.dart';

abstract class CoordName implements Built<CoordName, CoordNameBuilder> {
  factory CoordName([Function(CoordNameBuilder b) updates]) = _$CoordName;

  CoordName._();

  @BuiltValueField(wireName: 'lon')
  double? get lon;

  @BuiltValueField(wireName: 'lat')
  double? get lat;

  String toJson() {
    return jsonEncode(serializers.serializeWith(CoordName.serializer, this));
  }

  static CoordName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CoordName.serializer, jsonDecode(jsonString));
  }

  static List<CoordName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<CoordName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<CoordName> get serializer => _$coordNameSerializer;
}
