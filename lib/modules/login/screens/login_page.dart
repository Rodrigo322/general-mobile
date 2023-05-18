import 'package:flutter/material.dart';
import 'package:general_mobile/modules/login/widgets/button_widget.dart';
import 'package:general_mobile/modules/login/widgets/text_field_widget.dart';
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
        padding: const EdgeInsets.only(top: 80, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(image: AssetImage('assets/images/logo.png')),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 220,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 60,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  AppColors.primary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Define o raio da borda
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Entrar",
                          style: const TextStyle(color: AppColors.title),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 60,
                      child: TextButton(
                        style: ButtonStyle(
                          // backgroundColor:
                          //     const MaterialStatePropertyAll<Color>(
                          //         AppColors.primary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  15), // Define o raio da borda
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Cadastro",
                          style: const TextStyle(color: AppColors.title),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const TextFieldWidget(labelText: "E-mail"),
            const SizedBox(
              height: 30,
            ),
            const TextFieldWidget(labelText: "Senha"),
            const SizedBox(
              height: 50,
            ),
            ButtonWidget(
              text: "Entrar",
              onPressed: () {},
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(color: AppColors.sutTitle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
