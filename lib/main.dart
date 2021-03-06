import 'package:delimeal/screens/category_meal_screen.dart';
import 'package:delimeal/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 221, 1),
        fontFamily: "Relway",
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
            fontSize: 20,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.w700
          ),
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoreisScreen(),
        CategoryMealScreen.route: (ctx) => CategoryMealScreen(),
        MealScreen.route: (ctx) => MealScreen(),
      },
    );
  }
}