import 'package:flutter/material.dart';
import 'package:weather/screens/location_weather_page/widgets/city_country.dart';
import 'package:weather/screens/location_weather_page/widgets/your_location.dart';

class LocationWeather extends StatefulWidget {
  final double? lat;
  final double? long;

  const LocationWeather({
    Key? key,
    required this.lat,
    required this.long,
  }) : super(key: key);

  @override
  _LocationWeatherState createState() => _LocationWeatherState();
}

class _LocationWeatherState extends State<LocationWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            top: 40.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF223644),
          ),
          child: Column(
            children: <Widget>[
              YourLocation(),
              CityCountry(),
            ],
          ),
        ),
      ),
    );
  }
}
