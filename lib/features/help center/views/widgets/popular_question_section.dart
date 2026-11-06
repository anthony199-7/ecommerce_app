import 'package:ecommerce_app/features/help%20center/views/widgets/question_card.dart';
import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class PopularQuestionSection extends StatelessWidget {
  const PopularQuestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text(
          'Popular Questions',
          style: AppTextstyles.withColor(
            AppTextstyles.h3,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        const SizedBox(height: 16),
        QuestionCard(
          tile: 'How to track my order?',
          icon: Icons.local_shipping,
        ),
        const SizedBox(height: 16),
        QuestionCard(
          tile: 'How to return item?',
          icon: Icons.local_shipping,
        )

      ]
    ) ,);
  }
}
