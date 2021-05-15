import 'config.dart';
import 'request/request.dart';
import 'variable.dart';

class RequestStack {
  String id;
  String parentId;

  Variable variable;

  List<Variable> get variables {
    List<Variable> _variables = List.of({variable});
    RequestStack _parent = parent;
    while (_parent != null) {
      _variables.add(_parent.variable);
      _parent = _parent.parent;
    }
    return _variables.reversed.toList();
  }

  RequestStack get parent {
    if (config.stacks.containsKey(parentId)) return config.stacks[parentId];
    return null;
  }

  List<Request> get requests {
    List<Request> _requests = List.of({});
    config.requests.forEach((_, value) {
      if (value.parentId == this.id) _requests.add(value);
    });
    return _requests;
  }

  List<RequestStack> get children {
    List<RequestStack> _stacks = List.of({});
    config.stacks.forEach((_, value) {
      if (value.parentId == this.id) _stacks.add(value);
    });
    return _stacks;
  }
}
