import 'package:delimeal/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title, style: Theme.of(context).textTheme.title,),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [category.color.withOpacity(0.7), category.color],
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      padding: const EdgeInsets.all(16),
    );
  }
}