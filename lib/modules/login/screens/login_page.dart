import 'package:flutter/material.dart';
import 'package:general_mobile/modules/login/widgets/button_widget.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 300, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF262629),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(
                  color: AppColors.title,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                    hintStyle: TextStyle(color: AppColors.title),
                    labelStyle: TextStyle(color: AppColors.title)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF262629),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                style: TextStyle(
                  color: AppColors.title,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintStyle: TextStyle(color: AppColors.title),
                  labelStyle: TextStyle(color: AppColors.title),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
