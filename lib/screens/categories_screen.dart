import 'package:delimeal/dummy_data.dart';
import '../widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoreisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES.map((cat) => CategoryItem(cat)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
