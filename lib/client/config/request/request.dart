import '../request_stack.dart';
import 'package:mobx/mobx.dart';
import 'package:ragerest/utils/constants.dart';
import 'package:ragerest/utils/map_extension.dart';
import 'package:http/http.dart' as http;

import '../config.dart';
part 'request.g.dart';

class Request = _Request with _$Request;

abstract class _Request with Store {
  String id;
  String parentId;

  @observable
  String name;
  @observable
  String url;
  @observable
  RequestMethod method;

  @observable
  String response;

  int selectedTab = 0;

  _Request(
      {this.name,
      this.id,
      this.parentId,
      this.url = "",
      this.method = RequestMethod.GET,
      this.selectedTab = 0});

  RequestStack get parent {
    if (config.stacks.containsKey(parentId)) return config.stacks[parentId];
    return null;
  }

  @action
  send() async {
    var uri = Uri.parse(url);
    var res = await http.get(uri);
    response = res.body;
  }
}

// Handler methods

newRequest(String name, {String parent = BASE_STACK_NAME}) {
  return Request(name: name, id: parent + "/$name", parentId: parent);
  //
}

enum RequestMethod { GET, POST, PATCH, PUT, DELETE }

extension RequestMethodFunctions on RequestMethod {
  String string() {
    return this.toString().replaceAll("RequestMethod.", "");
  }
}
