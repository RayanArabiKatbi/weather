import 'package:flutter/material.dart';
import 'package:weather/app/app.dart';

import 'injection.dart';

Future<void> main() async {
  await initGetIt();
  runApp(App());
}
