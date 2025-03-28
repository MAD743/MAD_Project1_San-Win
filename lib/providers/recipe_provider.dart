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
      category: 'Breakfast',
      imageUrl: 'assets/sandwich.jpg',
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
    ),
    Recipe(
      title: 'Pancakes',
      category: 'Breakfast',
      imageUrl: 'assets/pancakes.jpg',
      description: 'A fluffy homemade pancake.',
      ingredients: ['Flour', 'Eggs', 'Milk', 'Baking powder'],
    ),
    Recipe(
      title: 'Chicken Wrap',
      category: 'Lunch',
      imageUrl: 'assets/chicken_wrap.jpg',
      description: 'A grilled chicken with veggies in a wrap.',
      ingredients: ['Chicken', 'Lettuce', 'Tomato', 'Wrap bread'],
    ),
    Recipe(
      title: 'Beef Stew',
      category: 'Lunch',
      imageUrl: 'assets/beef_stew.jpg',
      description: 'Hearty beef stew with vegetables and herbs.',
      ingredients: ['Beef', 'Potatoes', 'Carrots', 'Onions', 'Thyme'],
    ),
    Recipe(
      title: 'Pepperoni Pizza',
      category: 'Dinner',
      imageUrl: 'assets/pepperoni_pizza.jpg',
      description: 'Crispy pizza topped with mozzarella and pepperoni.',
      ingredients: [
        'Dough',
        'Tomato sauce',
        'Mozzarella',
        'Pepperoni',
        'Oregano'
      ],
    ),
    Recipe(
      title: 'Spaghetti',
      category: 'Dinner',
      imageUrl: 'assets/spaghetti.jpg',
      description: 'Classic spaghetti with tomato sauce.',
      ingredients: ['Pasta', 'Tomato sauce', 'Garlic', 'Basil'],
    ),
    Recipe(
      title: 'Taco',
      category: 'Dinner',
      imageUrl: 'assets/taco.jpg',
      description: 'A crunchy taco filled with beef and veggies.',
      ingredients: ['Tortilla', 'Ground beef', 'Lettuce', 'Cheese', 'Salsa'],
    ),
  ];

  List<Recipe> get recipes => _recipes;

  List<Recipe> getRecipesByCategory(String category) {
    return _recipes.where((recipe) => recipe.category == category).toList();
  }

  void toggleLike(Recipe recipe) {
    recipe.isLiked = !recipe.isLiked;
    notifyListeners();
  }
}
