library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather/models/base_response/base_response.dart';
import 'package:weather/models/weather_lat_long_model/clouds.dart';
import 'package:weather/models/weather_lat_long_model/coord.dart';
import 'package:weather/models/weather_lat_long_model/main.dart';
import 'package:weather/models/weather_lat_long_model/sys.dart';
import 'package:weather/models/weather_lat_long_model/weather.dart';
import 'package:weather/models/weather_lat_long_model/weather_lat_long.dart';
import 'package:weather/models/weather_lat_long_model/wind.dart';

part 'serializer.g.dart';

@SerializersFor(
  const [
    BaseResponse,
    Clouds,
    Coord,
    Main,
    Sys,
    WeatherLatLong,
    Weather,
    Wind,
  ],
)
final Serializers serializers = (_$serializers.toBuilder()
      // Standard Json Plugin
      ..addPlugin(StandardJsonPlugin())
      // Clouds Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(Clouds)],
          )),
          () => BaseResponseBuilder<Clouds>())
      // Coord Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(Coord)],
          )),
          () => BaseResponseBuilder<Coord>())
      // Main Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(Main)],
          )),
          () => BaseResponseBuilder<Main>())
      // Sys Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(Sys)],
          )),
          () => BaseResponseBuilder<Sys>())
      // Weather Lat Long Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(WeatherLatLong)],
          )),
          () => BaseResponseBuilder<WeatherLatLong>())
      // Weather Model
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [const FullType(Weather)],
          )),
          () => ListBuilder<Weather>())
      // Wind Model
      ..addBuilderFactory(
          (FullType(
            BaseResponse,
            [const FullType(Wind)],
          )),
          () => BaseResponseBuilder<Wind>()))
    .build();
