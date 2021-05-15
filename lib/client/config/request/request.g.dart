// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Request on _Request, Store {
  final _$nameAtom = Atom(name: '_Request.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$urlAtom = Atom(name: '_Request.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  final _$methodAtom = Atom(name: '_Request.method');

  @override
  RequestMethod get method {
    _$methodAtom.reportRead();
    return super.method;
  }

  @override
  set method(RequestMethod value) {
    _$methodAtom.reportWrite(value, super.method, () {
      super.method = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
url: ${url},
method: ${method}
    ''';
  }
}
