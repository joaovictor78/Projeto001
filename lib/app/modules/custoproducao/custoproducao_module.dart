import 'package:agrocontabilapp/app/modules/custoproducao/custoproducao_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustoproducaoModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/custoproducao', child: (_, args) => CustoproducaoPage()),
  ];

  static Inject get to => Inject<CustoproducaoModule>.of();
}
