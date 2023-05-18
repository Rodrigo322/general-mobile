import 'package:flutter/material.dart';

import '../../../shared/utilities/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll<Color>(AppColors.secondary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Define o raio da borda
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: AppColors.title),
        ),
      ),
    );
  }
}
