import 'package:flutter/material.dart';

import '../../../shared/utilities/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: AppColors.secondary,
      child: Center(
        child: ListTile(
          title: const Text.rich(
            TextSpan(
              text: "Olá, ",
              style: TextStyle(
                color: AppColors.title,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: "Rodrigo Lucas",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "Pratique todos os dias 20 questões",
              style: TextStyle(
                color: AppColors.sutTitle,
                fontSize: 15,
              ),
            ),
          ),
          trailing: SizedBox(
            width: 48,
            height: 48,
            child: Image.network(
              'https://github.com/rodrigo322.png',
              loadingBuilder: (context, child, progress) {
                return progress == null
                    ? child
                    : const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
