library cloud_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'cloud_name.g.dart';

abstract class CloudName implements Built<CloudName, CloudNameBuilder> {
  CloudName._();

  factory CloudName([Function(CloudNameBuilder b) updates]) = _$CloudName;

  @BuiltValueField(wireName: 'all')
  int? get all;

  String toJson() {
    return jsonEncode(serializers.serializeWith(CloudName.serializer, this));
  }

  static CloudName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CloudName.serializer, jsonDecode(jsonString));
  }

  static List<CloudName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<CloudName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<CloudName> get serializer => _$cloudNameSerializer;
}
