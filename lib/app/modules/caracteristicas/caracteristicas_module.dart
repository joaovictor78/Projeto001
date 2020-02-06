import 'package:agrocontabilapp/app/modules/caracteristicas/caracteristicas_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CaracteristicasModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/caracteristicas', child: (_, args) => CaracteristicasPage()),
  ];

  static Inject get to => Inject<CaracteristicasModule>.of();
}
