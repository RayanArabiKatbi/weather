import 'package:weather/models/weather_lat_long_model/weather_lat_long.dart';

abstract class IRepository {
  Future<WeatherLatLong?> getLatLongWeather(
    double? lat,
    double? long,
  );
}
