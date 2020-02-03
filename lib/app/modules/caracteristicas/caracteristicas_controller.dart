import 'package:mobx/mobx.dart';

part 'caracteristicas_controller.g.dart';

class CaracteristicasController = _CaracteristicasBase
    with _$CaracteristicasController;

abstract class _CaracteristicasBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
