import 'package:ecommerce_app/utils/app_textstyles.dart';
import 'package:ecommerce_app/view/widget/custom_textfield.dart';
import 'package:ecommerce_app/view/widget/main_screen.dart';
import 'package:ecommerce_app/view/widget/singin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // back botton
              IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.arrow_back_ios_new),
                color: isDark ? Colors.white : Colors.black12,
              ),
              const SizedBox(height: 20),
              Text(
                "Create Account,",
                style: AppTextstyles.withColor(
                  AppTextstyles.h1,
                  Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                'Sign up get started',
                style: AppTextstyles.withColor(
                  AppTextstyles.bodyLarge,
                  isDark ? Colors.white : Colors.grey[600]!,
                ),
              ),
              const SizedBox(height: 40),

              // full name textfeld
              CustomTextfield(
                label: 'Full Name',
                prefixIcon: Icons.person_2_outlined,
                keyboardType: TextInputType.name,

                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 18),

              // email textfeld
              CustomTextfield(
                label: 'Email',
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter a valid email';
                  }
                  if (!GetUtils.isEmail(value)) {
                    return 'Enter valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              //password textfield
              CustomTextfield(
                label: 'Password',
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your password';
                  }
                  if (!GetUtils.isEmail(value)) {
                    return 'Enter valid Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              //comfirmpassword textfield
              CustomTextfield(
                label: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                controller: _confirmpasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter your password';
                  }
                  if (!GetUtils.isEmail(value)) {
                    return 'Enter valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 28),

              // signup button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const MainScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: AppTextstyles.withColor(
                      AppTextstyles.bottonMedium,
                      Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: AppTextstyles.withColor(
                      AppTextstyles.bodyMedium,
                      isDark ? Colors.grey[400]! : Colors.grey[600]!,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => SinginScreen()),
                    child: Text(
                      " Sign In",
                      style: AppTextstyles.withColor(
                        AppTextstyles.bottonMedium,
                        Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
