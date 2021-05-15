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

class _RequestPaneWidgetState extends State<RequestPaneWidget>
    with SingleTickerProviderStateMixin {
  TabController controller;

  initState() {
    super.initState();
    controller = TabController(
        length: tabsList().length,
        initialIndex: config.request.selectedTab,
        vsync: this);
    controller.addListener(() {
      config.request.selectedTab = controller.index;
    });
  }

  List<Widget> tabWidgets() {
    return List.of({
      RequestBodyWidget(),
      RequestBodyWidget(),
      RequestBodyWidget(),
      RequestBodyWidget(),
      RequestBodyWidget()
    });
  }

  List<Widget> tabsList() {
    return List.of({"Body", "Query", "Header", "Auth", "Docs"})
        .map((e) => Text(
              e,
              style: config.theme.textTheme.headline5,
            ))
        .toList();
  }

  Widget tabbarWidget() {
    var tabs = tabsList();
    return Container(
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
                    controller: controller,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: tabWidgets(),
          controller: controller,
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
