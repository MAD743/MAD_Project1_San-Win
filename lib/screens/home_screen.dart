import 'package:flutter/material.dart';
import 'recipe_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = ['Breakfast', 'Lunch', 'Dinner'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meal Selection')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index], style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipeListScreen(category: categories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
