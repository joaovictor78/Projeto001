import 'package:mobx/mobx.dart';

part 'additens_controller.g.dart';

class AdditensController = _AdditensBase with _$AdditensController;

abstract class _AdditensBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
