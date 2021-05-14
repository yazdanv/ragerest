import 'package:mobx/mobx.dart';
import 'package:ragerest/client/Home/request.dart';
part 'home.g.dart';

Home home = Home();

class Home = _Home with _$Home;

abstract class _Home with Store {
  @observable
  RequestPane pane = RequestPane.Body;
}

enum RequestPane { Body }
