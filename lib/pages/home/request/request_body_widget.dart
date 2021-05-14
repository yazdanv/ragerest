import 'package:flutter/material.dart';
import 'package:ragerest/client/config/config.dart';

class RequestBodyWidget extends StatefulWidget {
  @override
  _RequestBodyWidgetState createState() => _RequestBodyWidgetState();
}

class _RequestBodyWidgetState extends State<RequestBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: config.theme.primaryColor,
    );
  }
}
