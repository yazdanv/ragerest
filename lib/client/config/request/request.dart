import '../request_stack.dart';
import 'package:mobx/mobx.dart';
import 'package:ragerest/utils/constants.dart';
import 'package:ragerest/utils/map_extension.dart';

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

  send() {}
}

// Handler methods

newRequest(String name, {String parent = BASE_STACK_NAME}) {
  return Request(name: name, id: parent + "/$name", parentId: parent);
  // Uri.parse(data.getVariableInjectedString("url", parent.variables));
}

enum RequestMethod { GET, POST, PATCH, PUT, DELETE }

extension RequestMethodFunctions on RequestMethod {
  String string() {
    return this.toString().replaceAll("RequestMethod.", "");
  }
}
