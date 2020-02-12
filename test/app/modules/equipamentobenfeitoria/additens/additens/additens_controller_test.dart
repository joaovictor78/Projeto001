import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/additens/additens/additens_controller.dart';
import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_module.dart';

void main() {
  initModule(EquipamentobenfeitoriaModule());
  AdditensController additens;

  setUp(() {
    additens = EquipamentobenfeitoriaModule.to.get<AdditensController>();
  });

  group('AdditensController Test', () {
    test("First Test", () {
      expect(additens, isInstanceOf<AdditensController>());
    });

    test("Set Value", () {
      expect(additens.value, equals(0));
      additens.increment();
      expect(additens.value, equals(1));
    });
  });
}
