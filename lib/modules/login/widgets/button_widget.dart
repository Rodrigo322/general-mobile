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
      height: 40,
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(AppColors.secondary),
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
