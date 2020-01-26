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
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle("Ingredients", context),
            buildContainer(
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(meal.ingredients[index]),
                    ),
                  ),
                ),
              ),
            ),
            buildSectionTitle("Steps", context),
            buildContainer(Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                    leading: CircleAvatar(child: Text("${(index + 1)}"),),
                    title: Text(meal.steps[index]),
                ),
                itemCount: meal.steps.length,
              ),
            ),),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  Container buildContainer(child) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: child,
      );

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
