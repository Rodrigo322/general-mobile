import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

//A principal função do Widget é instanciar o MaterialApp
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'General Question',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
