import 'package:ecommerce_app/features/edit_profile_screen/views/widgets/profile_form.dart';
import 'package:ecommerce_app/features/edit_profile_screen/views/widgets/profile_image.dart';
import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? Colors.white : Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Edit Profile',
          style: AppTextstyles.withColor(
            AppTextstyles.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child:Column(
          children:[
            SizedBox(height: 24),
            ProfileImage(),
            SizedBox(height: 24),
            ProfileForm(),
          ]
        )
      )
    );
  }
}