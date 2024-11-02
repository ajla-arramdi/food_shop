import 'package:flutter/material.dart';
import 'package:food_shop/widgets/All_food.dart';
import 'package:food_shop/widgets/CategoriesWidget.dart';
import 'package:food_shop/widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // AppBar
          HomeAppBar(),

          // Category Section
          Padding(
            padding: EdgeInsets.only(top: 20, right: 250),
            child: Text(
              "Category",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Categories
          Categorieswidget(),

          // "All Food" title
          Padding(
            padding: EdgeInsets.only(top: 20, right: 250),
            child: Text(
              'All Food',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Expanded widget with scrollable ListView for "All Food"
          Expanded(
            child: ListView(
              children: [
                Allfood(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
