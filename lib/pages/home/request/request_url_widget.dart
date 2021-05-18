import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ragerest/client/config/config.dart';
import 'package:ragerest/client/config/request/request.dart';

class RequestUrlWidget extends StatefulWidget {
  @override
  _RequestUrlWidgetState createState() => _RequestUrlWidgetState();
}

class _RequestUrlWidgetState extends State<RequestUrlWidget> {
  TextEditingController controller = TextEditingController();

  Widget methodSelection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: DropdownButton<String>(
        focusColor: Colors.white,
        value: config.request.method.string(),
        elevation: 5,
        style: config.theme.textButton,
        iconEnabledColor: Colors.white,
        selectedItemBuilder: (_) =>
            RequestMethod.values.map<Widget>((RequestMethod item) {
          return Center(
            child: Text(
              item.string(),
              style: config.theme.textButton,
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
        items: RequestMethod.values
            .map<DropdownMenuItem<String>>((RequestMethod value) {
          return DropdownMenuItem<String>(
            value: value.string(),
            child: Center(
                child: Text(
              value.string(),
              style: config.theme.textButtonBlack,
              textAlign: TextAlign.center,
            )),
          );
        }).toList(),
        onChanged: (String value) {
          RequestMethod.values.forEach((element) {
            if (value == element.string()) config.request.method = element;
          });
        },
      ),
    );
  }

  Widget inputField() {
    return Container(
      child: TextField(
        controller: controller,
        style: config.theme.textHeadline5,
      ),
    );
  }

  Widget sendButton() {
    return MaterialButton(
      onPressed: config.request?.send,
      child: Text(
        "Send",
        style: config.theme.textTheme.button,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.text = config.request.url;
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
