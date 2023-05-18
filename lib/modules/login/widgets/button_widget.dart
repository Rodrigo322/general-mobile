import 'package:flutter/material.dart';

import '../../../shared/utilities/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(AppColors.secondary),
        ),
        onPressed: () {},
        child: const Text(
          "Entrar",
          style: TextStyle(color: AppColors.title),
        ),
      ),
    );
  }
}
