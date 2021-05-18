import 'package:flutter/material.dart';
import 'package:ragerest/pages/home/home_screen.dart';

import 'client/config/config.dart';
import 'client/config/request/request.dart';

Future<void> main() async {
  config.request = newRequest("test");
  config.request.method = RequestMethod.GET;
  config.request.url =
      "https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0";
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rage Rest',
      debugShowCheckedModeBanner: false,
      theme: config.theme.mainTheme,
      home: HomeScreen(),
    );
  }
}
