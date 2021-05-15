// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Config on _Config, Store {
  final _$stacksAtom = Atom(name: '_Config.stacks');

  @override
  Map<String, RequestStack> get stacks {
    _$stacksAtom.reportRead();
    return super.stacks;
  }

  @override
  set stacks(Map<String, RequestStack> value) {
    _$stacksAtom.reportWrite(value, super.stacks, () {
      super.stacks = value;
    });
  }

  final _$requestsAtom = Atom(name: '_Config.requests');

  @override
  Map<String, Request> get requests {
    _$requestsAtom.reportRead();
    return super.requests;
  }

  @override
  set requests(Map<String, Request> value) {
    _$requestsAtom.reportWrite(value, super.requests, () {
      super.requests = value;
    });
  }

  final _$requestAtom = Atom(name: '_Config.request');

  @override
  Request get request {
    _$requestAtom.reportRead();
    return super.request;
  }

  @override
  set request(Request value) {
    _$requestAtom.reportWrite(value, super.request, () {
      super.request = value;
    });
  }

  final _$themeAtom = Atom(name: '_Config.theme');

  @override
  ThemeData get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(ThemeData value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  final _$_ConfigActionController = ActionController(name: '_Config');

  @override
  dynamic changeTheme() {
    final _$actionInfo =
        _$_ConfigActionController.startAction(name: '_Config.changeTheme');
    try {
      return super.changeTheme();
    } finally {
      _$_ConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
stacks: ${stacks},
requests: ${requests},
request: ${request},
theme: ${theme}
    ''';
  }
}
