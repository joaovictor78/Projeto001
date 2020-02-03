import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:agrocontabilapp/app/modules/splashscreen/splashscreen_controller.dart';
import 'package:agrocontabilapp/app/modules/splashscreen/splashscreen_module.dart';

void main() {
  initModule(SplashscreenModule());
  SplashscreenController splashscreen;

  setUp(() {
    splashscreen = SplashscreenModule.to.get<SplashscreenController>();
  });

  group('SplashscreenController Test', () {
    test("First Test", () {
      expect(splashscreen, isInstanceOf<SplashscreenController>());
    });

    test("Set Value", () {
      expect(splashscreen.value, equals(0));
      splashscreen.increment();
      expect(splashscreen.value, equals(1));
    });
  });
}
