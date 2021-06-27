import 'package:weather/data/http_helper/iHttp_helper.dart';
import 'package:weather/data/repository/iRepository.dart';
import 'package:weather/models/weather_lat_long_model/weather_lat_long.dart';

class Repository implements IRepository {
  IHttpHelper _iHttpHelper;

  Repository(
    this._iHttpHelper,
  );

  @override
  Future<WeatherLatLong?> getLatLongWeather(
    double? lat,
    double? long,
  ) async {
    final latLongWeather = await _iHttpHelper.getLatLongWeather(
      lat,
      long,
    );
    return latLongWeather;
  }
}
