import 'package:mobx/mobx.dart';

part 'maodeobra_controller.g.dart';

class MaodeobraController = _MaodeobraBase with _$MaodeobraController;

abstract class _MaodeobraBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
