import 'package:flutter/material.dart';
import 'package:general_mobile/modules/home/models/card_list_home_model.dart';
import 'package:general_mobile/shared/utilities/app_colors.dart';

class CardQuestionsWidget extends StatefulWidget {
  const CardQuestionsWidget({super.key});

  @override
  State<CardQuestionsWidget> createState() => _CardQuestionsWidgetState();
}

class _CardQuestionsWidgetState extends State<CardQuestionsWidget> {
  List<CardListHomeModel> listCard = [
    CardListHomeModel(
      tech: "Javascript",
      description: "JavaScript é uma linguagem de programação interpretada",
    ),
    CardListHomeModel(
      tech: "Python",
      description: "Python é uma linguagem de programação de alto nível",
    ),
    CardListHomeModel(
      tech: "Java",
      description:
          "Java é uma linguagem de programação orientada a objetos desenvolvida",
    ),
    CardListHomeModel(
      tech: "Ruby",
      description:
          "Ruby é uma linguagem de programação interpretada multiparadigma",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: ListView.builder(
          itemCount: listCard.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      listCard[index].tech,
                      style: const TextStyle(
                        color: Color(0xFFADA7C1),
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF343141),
                      border: Border.all(
                        color: const Color(0xFFADA7C1),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      listCard[index].description,
                      style: const TextStyle(color: AppColors.title),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
