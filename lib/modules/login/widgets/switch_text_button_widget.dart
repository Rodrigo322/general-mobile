import 'package:flutter/material.dart';

import '../../../shared/utilities/app_colors.dart';

class SwitchTextButton extends StatelessWidget {
  final String text;
  final bool isActive;
  const SwitchTextButton(
      {super.key, required this.text, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 60,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: isActive
              ? const MaterialStatePropertyAll<Color>(AppColors.primary)
              : null,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Define o raio da borda
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: AppColors.title),
        ),
      ),
    );
  }
}
