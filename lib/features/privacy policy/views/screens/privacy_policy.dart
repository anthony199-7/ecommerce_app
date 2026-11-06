import 'package:ecommerce_app/features/privacy%20policy/views/widgets/info_section.dart';
import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Privacy Policy',
          style: AppTextstyles.withColor(
            AppTextstyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'Information we collect',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              InfoSection(
                title: 'How we use your information',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              InfoSection(
                title: 'Information sharing',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              InfoSection(
                title: 'Data security',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              InfoSection(
                title: 'Your rights',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              InfoSection(
                title: 'Cookies Policy',
                content:
                    'We collect information that you provide directly to us, including name, email Address, and shipping information',
              ),
              const SizedBox(height: 24),
              Text(
                'Last updated: March 2026',
                style: AppTextstyles.withColor(
                  AppTextstyles.bodySmall,
                  isDark ? Colors.grey : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
