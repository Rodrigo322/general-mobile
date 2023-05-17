import 'package:flutter_modular/flutter_modular.dart';
import 'package:general_mobile/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        //primeiro modulo a ser carregado na aplicação
        ModuleRoute('/', module: LoginModule()),
      ];
}
