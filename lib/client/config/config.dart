import 'package:mobx/mobx.dart';
import 'package:ragerest/client/config/request.dart';
import 'request_stack.dart';
part 'config.g.dart';

Config config = Config();

class Config = _Config with _$Config;

abstract class _Config with Store {
  @observable
  Map<String, RequestStack> stacks = {};

  @observable
  Map<String, Request> requests = {};

  @observable
  Request request;

  load() async {}
}
