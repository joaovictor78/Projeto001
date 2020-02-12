import 'package:mobx/mobx.dart';

part 'equipamentobenfeitoria_controller.g.dart';

class EquipamentobenfeitoriaController = _EquipamentobenfeitoriaBase
    with _$EquipamentobenfeitoriaController;

abstract class _EquipamentobenfeitoriaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
