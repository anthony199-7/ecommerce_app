import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const CategoryCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black.withOpacity(0.2):Colors.white.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: AppTextstyles.withColor(
                AppTextstyles.bodyMedium,
                Theme.of(context).textTheme.bodyLarge!.color!,
              ),
            )
          ],
        ),
      ),
    );
  }
}
