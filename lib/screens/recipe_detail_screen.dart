import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.title)),
      body: Column(
        children: [
          Image.asset(recipe.imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(recipe.description, style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ...recipe.ingredients.map((ingredient) => Text('- $ingredient')).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
