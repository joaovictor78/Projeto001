import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:agrocontabilapp/app/modules/maodeobra/maodeobra_controller.dart';
import 'package:agrocontabilapp/app/modules/maodeobra/maodeobra_module.dart';

void main() {
  initModule(MaodeobraModule());
  MaodeobraController maodeobra;

  setUp(() {
    maodeobra = MaodeobraModule.to.get<MaodeobraController>();
  });

  group('MaodeobraController Test', () {
    test("First Test", () {
      expect(maodeobra, isInstanceOf<MaodeobraController>());
    });

    test("Set Value", () {
      expect(maodeobra.value, equals(0));
      maodeobra.increment();
      expect(maodeobra.value, equals(1));
    });
  });
}
