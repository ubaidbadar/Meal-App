import 'package:delimeal/models/meal.dart';
import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const route = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              height: 230,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle("Ingredients", context),
            buildExpandedContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(meal.ingredients[index]),
                  ),
                ),
                itemCount: meal.ingredients.length,
              ),
            ),
            buildSectionTitle("Steps", context),
            buildExpandedContainer(
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemBuilder: (ctx, index) => ListTile(
                    leading: CircleAvatar(child: Text("${(index + 1)}"),),
                    title: Text(meal.steps[index]),
                  ),
                  itemCount: meal.steps.length,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Container buildExpandedContainer(Widget child) {
    return Container(
      height: 188,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Container buildSectionTitle(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }
}
