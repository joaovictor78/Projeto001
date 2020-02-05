import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:agrocontabilapp/app/module/custoproducao/custoproducao/custoproducao_controller.dart';
import 'package:agrocontabilapp/app/app_module.dart';

void main() {
  initModule(AppModule());
  CustoproducaoController custoproducao;

  setUp(() {
    custoproducao = AppModule.to.get<CustoproducaoController>();
  });

  group('CustoproducaoController Test', () {
    test("First Test", () {
      expect(custoproducao, isInstanceOf<CustoproducaoController>());
    });

    test("Set Value", () {
      expect(custoproducao.value, equals(0));
      custoproducao.increment();
      expect(custoproducao.value, equals(1));
    });
  });
}
