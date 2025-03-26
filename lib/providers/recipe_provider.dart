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
      title: 'Ham Sandwich',
      category: 'Breakfast',
      imageUrl: 'assets/sandwich.jpg',
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
    ),
    Recipe(
      title: 'Pancakes',
      category: 'Breakfast',
      imageUrl: 'assets/pancakes.jpg',
      description: 'Fluffy homemade pancakes..',
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
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
    ),
    Recipe(
      title: 'Pepperoni Pizza',
      category: 'Dinner',
      imageUrl: 'assets/pepperoni_pizza.jpg',
      description: 'Crispy pizza topped with mozzarella and pepperoni.',
      ingredients: [
        'dough',
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
      description: 'Classic spaghetti pasta in tomato sauce.',
      ingredients: [
        'Spaghetti',
        'Tomato sauce',
        'Garlic',
        'Olive oil',
        'Basil',
      ],
    ),
    Recipe(
      title: 'Taco',
      category: 'Dinner',
      imageUrl: 'assets/taco.jpg',
      description: 'Crunchy tacos with beef and fresh toppings.',
      ingredients: [
        'Taco shells',
        'Ground beef',
        'Lettuce',
        'Tomato',
        'Cheddar cheese',
        'Sour cream',
      ],
    ),
  ];

  List<Recipe> get recipes => _recipes;

  List<Recipe> getRecipesByCategory(String category) {
    return _recipes.where((recipe) => recipe.category == category).toList();
  }
}
