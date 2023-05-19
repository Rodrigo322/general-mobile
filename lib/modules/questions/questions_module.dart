import 'package:flutter_modular/flutter_modular.dart';

import 'screens/questions_page.dart';

class QuestionsModule extends Module {
  @override
  List<Bind> get binds => [];

  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const QuestionPage()),
      ];
}
