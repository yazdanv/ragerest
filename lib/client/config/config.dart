import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:ragerest/client/config/request/request.dart';
import 'package:ragerest/utils/theme.dart';
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

  @observable
  ThemeData theme = mainTheme;

  @action
  changeTheme() {
    theme = theme.copyWith(
        textTheme: theme.textTheme.copyWith(
            button: theme.textTheme.button.copyWith(color: Colors.green)));
  }
}
