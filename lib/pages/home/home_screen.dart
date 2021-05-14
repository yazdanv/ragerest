import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'request/request_pane_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Observer(builder: (_) {
      return Container(child: RequestPaneWidget());
    }));
  }
}
