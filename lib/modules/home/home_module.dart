import 'package:flutter_modular/flutter_modular.dart';
import 'package:general_mobile/modules/home/screens/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        //primeira rota deste modulo
        ChildRoute('/', child: (context, args) => const HomePage())
      ];
}
