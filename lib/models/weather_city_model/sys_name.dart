library sys_name;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'sys_name.g.dart';

/// SysDto
abstract class SysName implements Built<SysName, SysNameBuilder> {
  SysName._();

  factory SysName([Function(SysNameBuilder b) updates]) = _$SysName;

  @BuiltValueField(wireName: 'type')
  int? get type;

  @BuiltValueField(wireName: 'id')
  int? get id;

  @BuiltValueField(wireName: 'country')
  String? get country;

  @BuiltValueField(wireName: 'sunrise')
  int? get sunrise;

  @BuiltValueField(wireName: 'sunset')
  int? get sunset;

  String toJson() {
    return jsonEncode(serializers.serializeWith(SysName.serializer, this));
  }

  static SysName? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SysName.serializer, jsonDecode(jsonString));
  }

  static List<SysName> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<SysName>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<SysName> get serializer => _$sysNameSerializer;
}
