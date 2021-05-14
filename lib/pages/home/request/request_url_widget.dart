import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ragerest/client/config/config.dart';

class RequestUrlWidget extends StatefulWidget {
  @override
  _RequestUrlWidgetState createState() => _RequestUrlWidgetState();
}

class _RequestUrlWidgetState extends State<RequestUrlWidget> {
  TextEditingController controller = TextEditingController();

  Widget methodSelection() {
    return Container(
      width: 120,
    );
  }

  Widget inputField() {
    return Container(
      child: TextField(
        controller: controller,
      ),
    );
  }

  Widget sendButton() {
    return MaterialButton(
      onPressed: () {
        config.changeTheme();
        // config.request?.send
      },
      child: Text(
        "Send",
        style: config.theme.textTheme.button,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        height: 50,
        color: config.theme.primaryColorDark,
        child: Row(
          children: [
            methodSelection(),
            Expanded(child: inputField(), flex: 1),
            sendButton()
          ],
        ),
      );
    });
  }
}
