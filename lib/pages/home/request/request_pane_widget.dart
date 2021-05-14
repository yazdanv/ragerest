import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ragerest/client/config/config.dart';
import 'request_body_widget.dart';
import 'request_url_widget.dart';
import '../home.dart';

class RequestPaneWidget extends StatefulWidget {
  @override
  _RequestPaneWidgetState createState() => _RequestPaneWidgetState();
}

class _RequestPaneWidgetState extends State<RequestPaneWidget> {
  List<Widget> tabWidgets() {
    return List.of({RequestBodyWidget()});
  }

  List<Widget> tabsList() {
    return List.of({
      Text(
        "Body",
        style: config.theme.textTheme.headline5,
      )
    });
  }

  Widget tabbarWidget() {
    var tabs = tabsList();
    return Container(
      child: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Container(
              color: config.theme.primaryColor,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Container()),
                    TabBar(
                      tabs: tabs,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: tabWidgets(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RequestUrlWidget(),
        Expanded(
          child: tabbarWidget(),
          flex: 1,
        )
      ],
    );
  }
}
