import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeProvider with ChangeNotifier {
  List<Recipe> _recipes = [
    Recipe(
      title: 'Croissant',
      category: 'Breakfast',
      imageUrl: 'assets/croissant.jpg',
      description: 'A buttery, flaky, and delicious pastry.',
      ingredients: ['Flour', 'Butter', 'Yeast', 'Sugar', 'Milk'],
    ),
    Recipe(
      title: 'Sandwich',
      category: 'Lunch',
      imageUrl: 'assets/sandwich.jpg',
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
    ),
  ];

  List<Recipe> get recipes => _recipes;

  List<Recipe> getRecipesByCategory(String category) {
    return _recipes.where((recipe) => recipe.category == category).toList();
  }
}
