import 'package:delimeal/dummy_data.dart';
import 'package:delimeal/models/meal.dart';
import 'package:delimeal/widgets/meal_item.dart';

import '../models/category.dart';
import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const route = '/categories';
  @override
  Widget build(BuildContext context) {
    final Category routeArg = ModalRoute.of(context).settings.arguments;
    final List<Meal> categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(routeArg.id))
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(routeArg.title)),
      body: ListView.builder(
        itemBuilder: (ctx, index) => MealItem(categoryMeals[index]),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
