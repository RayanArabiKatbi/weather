library base_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather/models/serializer/serializer.dart';

part 'base_response.g.dart';

abstract class BaseResponse<T>
    implements Built<BaseResponse<T>, BaseResponseBuilder<T>> {
  @BuiltValueField(wireName: 'code')
  int? get status;
  String? get message;
  T? get data;

  BaseResponse._();

  factory BaseResponse([
    updates(BaseResponseBuilder<T> b),
  ]) = _$BaseResponse<T>;

  static Serializer<BaseResponse> get serializer => _$baseResponseSerializer;

  String toJson() {
    return json.encode(
      serializers.serializeWith(
        BaseResponse.serializer,
        this,
      ),
    );
  }

  static BaseResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      BaseResponse.serializer,
      json.decode(jsonString),
    );
  }
}
