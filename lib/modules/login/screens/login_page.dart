import 'package:flutter/material.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _ligado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 300, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Switch(
              value: _ligado,
              onChanged: (valor) {
                setState(
                  () {
                    _ligado = valor;
                  },
                );
              },
            ),
            const TextField(
              style: TextStyle(
                color: AppColors.title,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                  hintText: 'email@email.com',
                  labelStyle: TextStyle(color: AppColors.title)),
            ),
            const SizedBox(
              height: 45,
            ),
            const TextField(
              style: TextStyle(
                color: AppColors.title,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintText: 'Sua senha',
                  labelStyle: TextStyle(color: AppColors.title)),
            ),
          ],
        ),
      ),
    );
  }
}
