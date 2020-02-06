import 'package:agrocontabilapp/app/modules/splashscreen/splashscreen_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:agrocontabilapp/app/modules/splashscreen/splashscreen_page.dart';

class SplashscreenModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashscreenController()),
        Bind((i) => SplashscreenController()),
      ];

  @override
  List<Router> get routers => [
        Router('/splashscreen', child: (_, args) => SplashScreenPage()),
      ];

  static Inject get to => Inject<SplashscreenModule>.of();
}
  