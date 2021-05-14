import 'package:flutter/material.dart';
import 'package:ragerest/pages/home/home_screen.dart';

import 'client/config/config.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rage Rest',
      debugShowCheckedModeBanner: false,
      theme: config.theme,
      home: HomeScreen(),
    );
  }
}
