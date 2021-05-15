import '../request_stack.dart';
import 'package:mobx/mobx.dart';
import 'package:ragerest/utils/constants.dart';
import 'package:ragerest/utils/map_extension.dart';

import '../config.dart';
part 'request.g.dart';

class Request = _Request with _$Request;

abstract class _Request with Store {
  String name;
  String id;
  String parentId;

  String url;
  Method method;

  _Request({this.name, this.id, this.parentId, this.url, this.method});

  RequestStack get parent {
    if (config.stacks.containsKey(parentId)) return config.stacks[parentId];
    return null;
  }

  send() {}

  static Request newRequest(String name, {String parent = BASE_STACK_NAME}) {
    return Request(name: name, id: parent + "/$name", parentId: parent);
    // Uri.parse(data.getVariableInjectedString("url", parent.variables));
  }
}

enum Method { GET, POST, PATCH, PUT, DELETE }
