import 'package:flutter/material.dart';

class CityCountry extends StatelessWidget {
  const CityCountry({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      width: 200,
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'City Name,  ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          Text(
            'PS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
