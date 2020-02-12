import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_controller.dart';
import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_module.dart';

void main() {
  initModule(EquipamentobenfeitoriaModule());
  EquipamentobenfeitoriaController equipamentobenfeitoria;

  setUp(() {
    equipamentobenfeitoria =
        EquipamentobenfeitoriaModule.to.get<EquipamentobenfeitoriaController>();
  });

  group('EquipamentobenfeitoriaController Test', () {
    test("First Test", () {
      expect(equipamentobenfeitoria,
          isInstanceOf<EquipamentobenfeitoriaController>());
    });

    test("Set Value", () {
      expect(equipamentobenfeitoria.value, equals(0));
      equipamentobenfeitoria.increment();
      expect(equipamentobenfeitoria.value, equals(1));
    });
  });
}
