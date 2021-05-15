import 'package:ragerest/client/config/variable.dart';

extension MapAdminPanelExtensions on Map<String, dynamic> {
  dynamic get(String key, {dynamic def}) {
    return this.containsKey(key) ? this[key] : def;
  }

  Map<String, dynamic> getMap(String key, {Map<String, dynamic> def}) {
    return this.containsKey(key)
        ? this[key]
        : def != null
            ? def
            : Map.of({});
  }

  List<dynamic> getList(String key, {List<dynamic> def}) {
    return this.containsKey(key)
        ? this[key]
        : def != null
            ? def
            : List.of({});
  }

  double getDouble(String key, {double def = 0.0}) {
    return this.containsKey(key) ? this[key].toDouble() : def;
  }

  bool getBool(String key, {bool def = false}) {
    return this.containsKey(key)
        ? this[key].toString().toLowerCase() == "true"
        : def;
  }

  dynamic getString(String key, {String def}) {
    return this.containsKey(key)
        ? this[key].toString()
        : def != null
            ? def
            : "";
  }

  dynamic getVariableInjectedString(String key, List<Variable> variables,
      {String def}) {
    String value = getString(key, def: def);
    value = globalVariables.putVariables(value);
    variables.forEach((element) {
      value = element.putVariables(value);
    });
    return value;
  }
}

extension StringExtensions on String {
  String injectVariables(List<Variable> variables) {
    String value = this;
    value = globalVariables.putVariables(value);
    variables.forEach((element) {
      value = element.putVariables(value);
    });
    return value;
  }
}
