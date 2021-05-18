import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ragerest/client/config/config.dart';

class RequestBodyWidget extends StatefulWidget {
  @override
  _RequestBodyWidgetState createState() => _RequestBodyWidgetState();
}

class _RequestBodyWidgetState extends State<RequestBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
          color: config.theme.primaryColor,
          child: Text(config.request.response ?? ""));
    });
  }
}
