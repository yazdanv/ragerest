import 'package:mobx/mobx.dart';
part 'home.g.dart';

Home home = Home();

class Home = _Home with _$Home;

abstract class _Home with Store {
  @observable
  RequestPane pane = RequestPane.Body;
}

enum RequestPane { Body }
