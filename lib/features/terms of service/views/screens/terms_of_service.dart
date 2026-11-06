import 'package:ecommerce_app/features/privacy%20policy/views/widgets/info_section.dart';
import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

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
          'Terms of Service',
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
                title: 'Welcome to fashon shop',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              InfoSection(
                title: 'Account Registration',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              InfoSection(
                title: 'User Responsiblities',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              InfoSection(
                title: 'Privacy Policy',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              InfoSection(
                title: 'Interlectural Property',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              InfoSection(
                title: 'Welcome to fashon shop',
                content:
                    'By accessing and using this application , you accept and agree to be bound by the terms, provision of this agreement ',
              ),
              SizedBox(height: 24),
              Text(
                'Last update: March 2024',
                style: AppTextstyles.withColor(
                  AppTextstyles.bodySmall,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
