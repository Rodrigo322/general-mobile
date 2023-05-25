import 'package:flutter_modular/flutter_modular.dart';
import 'package:general_mobile/modules/home/home_module.dart';
import 'package:general_mobile/modules/login/screens/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const LoginPage(),
          transition: TransitionType.leftToRightWithFade,
        ),
        //inicia o modulo de login
        ModuleRoute(
          '/home/',
          module: HomeModule(),
          transition: TransitionType.leftToRightWithFade,
        ),
      ];
}
