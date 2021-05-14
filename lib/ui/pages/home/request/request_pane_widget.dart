import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'request_body_widget.dart';
import 'request_url_widget.dart';
import '../home.dart';

class RequestPaneWidget extends StatefulWidget {
  @override
  _RequestPaneWidgetState createState() => _RequestPaneWidgetState();
}

class _RequestPaneWidgetState extends State<RequestPaneWidget> {
  Widget tabsWidget() {
    return Observer(builder: (ctx) {
      switch (home.pane) {
        case RequestPane.Body:
          return RequestBodyWidget();
        default:
          return Container();
      }
    });
  }

  Widget tabSelectorWidget() {
    return Row(
      children: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [RequestUrlWidget(), tabSelectorWidget(), tabsWidget()],
    );
  }
}
