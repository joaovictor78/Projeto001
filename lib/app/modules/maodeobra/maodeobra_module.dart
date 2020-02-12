import 'package:agrocontabilapp/app/modules/maodeobra/maodeobra_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:agrocontabilapp/app/modules/maodeobra/maodeobra_page.dart';

class MaodeobraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MaodeobraController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => MaodeobraPage()),
      ];

  static Inject get to => Inject<MaodeobraModule>.of();
}
