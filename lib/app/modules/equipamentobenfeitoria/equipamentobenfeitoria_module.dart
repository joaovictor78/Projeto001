import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/additens/additens/additens_page.dart';
import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:agrocontabilapp/app/modules/equipamentobenfeitoria/equipamentobenfeitoria_page.dart';

class EquipamentobenfeitoriaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EquipamentobenfeitoriaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/equipamentosbenfeitorias',
            child: (_, args) => EquipamentobenfeitoriaPage()),
        Router('/equipamentosbenfeitorias/additens',
            child: (_, args) => AdditensPage()),
      ];

  static Inject get to => Inject<EquipamentobenfeitoriaModule>.of();
}
