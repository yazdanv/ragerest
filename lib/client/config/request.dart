import 'request_stack.dart';
import 'package:ragerest/utils/constants.dart';
import 'package:ragerest/utils/map_extension.dart';

import 'config.dart';

class Request {
  String id;
  String parentId;
  Map<String, dynamic> data;

  RequestStack get parent {
    if (config.stacks.containsKey(parentId)) return config.stacks[parentId];
    return null;
  }

  Request(this.data);

  send() {}

  static Request newRequest(String name, {String parent = BASE_STACK_NAME}) {
    return Request(Map.of({}));
    // Uri.parse(data.getVariableInjectedString("url", parent.variables));
  }
}
