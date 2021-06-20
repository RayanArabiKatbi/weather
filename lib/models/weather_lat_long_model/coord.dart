library coord;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'coord.g.dart';

abstract class Coord implements Built<Coord, CoordBuilder> {
  Coord._();

  factory Coord([Function(CoordBuilder b) updates]) = _$Coord;

  @BuiltValueField(wireName: 'lon')
  double? get lon;

  @BuiltValueField(wireName: 'lat')
  double? get lat;

  String toJson() {
    return jsonEncode(serializers.serializeWith(
      Coord.serializer,
      this,
    ));
  }

  static Coord? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Coord.serializer,
      jsonDecode(jsonString),
    );
  }

  static List<Coord> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Coord>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Coord> get serializer => _$coordSerializer;
}
