import 'package:agrocontabilapp/app/app_controller.dart';
import 'package:agrocontabilapp/app/modules/caracteristicas/caracteristicas_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:agrocontabilapp/app/app_widget.dart';
import 'package:agrocontabilapp/app/modules/home/home_module.dart';

import 'modules/custoproducao/custoproducao_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustoproducaoController()),
        Bind((i) => CaracteristicasController()),
        Bind((i) => CaracteristicasController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
