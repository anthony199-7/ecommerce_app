import 'package:ecommerce_app/controllers/theme_controller.dart';
import 'package:ecommerce_app/features/notifications/view/notification_screen.dart';
import 'package:ecommerce_app/view/widget/all_product_screen.dart';
import 'package:ecommerce_app/view/widget/cart_screen.dart';
import 'package:ecommerce_app/view/widget/category_chips.dart';
import 'package:ecommerce_app/view/widget/custom_search_bar.dart';
import 'package:ecommerce_app/view/widget/product_grid.dart';
import 'package:ecommerce_app/view/widget/sales_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //hader section
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("lib/assets/images/avatar.jpg"),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Alex',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  const Spacer(),

                  // nofication icon
                  IconButton(
                    onPressed: () => Get.to(() => NotificationScreen()),
                    icon: Icon(Icons.notifications),
                  ),
                  //cart
                  IconButton(
                    onPressed: () => Get.to(() => CartScreen()),
                    icon: const Icon(Icons.shopping_bag_outlined),
                  ),
                  // theme button
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: () => controller.toggleTheme(),
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //search bar
            const CustomSearchBar(),
            // category chips
            const CategoryChips(),
            // sale banner
            const SaleBanner(),
            // popular product
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => AllProductsScreen()),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            //product grid
            const Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
