import 'package:mobx/mobx.dart';

part 'custoproducao_controller.g.dart';

class CustoproducaoController = _CustoproducaoBase
    with _$CustoproducaoController;

abstract class _CustoproducaoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
