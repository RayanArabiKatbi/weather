library sys;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'sys.g.dart';

abstract class Sys implements Built<Sys, SysBuilder> {
  Sys._();

  factory Sys([Function(SysBuilder b) updates]) = _$Sys;

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
    return jsonEncode(
      serializers.serializeWith(Sys.serializer, this),
    );
  }

  static Sys? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Sys.serializer,
      jsonDecode(jsonString),
    );
  }

  static List<Sys> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Sys>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  static Serializer<Sys> get serializer => _$sysSerializer;
}
