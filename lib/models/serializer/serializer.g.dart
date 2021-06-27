// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BaseResponse.serializer)
      ..add(CloudName.serializer)
      ..add(Clouds.serializer)
      ..add(Coord.serializer)
      ..add(CoordName.serializer)
      ..add(Main.serializer)
      ..add(MainName.serializer)
      ..add(Sys.serializer)
      ..add(SysName.serializer)
      ..add(Weather.serializer)
      ..add(WeatherCity.serializer)
      ..add(WeatherLatLong.serializer)
      ..add(WeatherName.serializer)
      ..add(Wind.serializer)
      ..add(WindName.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Weather)]),
          () => new ListBuilder<Weather>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherName)]),
          () => new ListBuilder<WeatherName>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
