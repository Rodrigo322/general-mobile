import 'package:flutter/material.dart';

import '../../../shared/utilities/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  const TextFieldWidget({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF262629),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: const TextStyle(
          color: AppColors.title,
        ),
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
            hintStyle: const TextStyle(color: AppColors.title),
            labelStyle: const TextStyle(color: AppColors.title)),
      ),
    );
  }
}
