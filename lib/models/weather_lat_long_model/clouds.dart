library clouds;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'clouds.g.dart';

abstract class Clouds implements Built<Clouds, CloudsBuilder> {
  Clouds._();

  factory Clouds([Function(CloudsBuilder b) updates]) = _$Clouds;

  @BuiltValueField(wireName: 'all')
  int? get all;

  String toJson() {
    return jsonEncode(
      serializers.serializeWith(Clouds.serializer, this),
    );
  }

  static Clouds? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Clouds.serializer, jsonDecode(jsonString));
  }

  static List<Clouds> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Clouds>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Clouds> get serializer => _$cloudsSerializer;
}
