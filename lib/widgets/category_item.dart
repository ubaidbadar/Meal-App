import 'package:delimeal/models/category.dart';
import 'package:delimeal/screens/category_meal_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(CategoryMealScreen.route, arguments: category),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [category.color.withOpacity(0.7), category.color],
            ),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
