import 'package:flutter/material.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Color(0xFF869DA4),
        ),
        Text(
          'Your Location Now',
          style: TextStyle(
            color: Color(0xFF869DA4),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
