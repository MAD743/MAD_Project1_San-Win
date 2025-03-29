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
      instructions:
          'Mix ingredients, fold dough with butter, chill, and bake at 200°C until golden.',
      calories: 270,
    ),
    Recipe(
      title: 'Sandwich',
      category: 'Breakfast',
      imageUrl: 'assets/sandwich.jpg',
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
      instructions:
          'Layer ham, cheese, and veggies between slices of bread and serve.',
      calories: 320,
    ),
    Recipe(
      title: 'Pancakes',
      category: 'Breakfast',
      imageUrl: 'assets/pancakes.jpg',
      description: 'Fluffy homemade pancakes.',
      ingredients: ['Flour', 'Eggs', 'Milk', 'Baking powder'],
      instructions:
          'Mix ingredients, pour batter into a pan, cook both sides until golden.',
      calories: 290,
    ),
    Recipe(
      title: 'Chicken Wrap',
      category: 'Lunch',
      imageUrl: 'assets/chicken_wrap.jpg',
      description: 'Grilled chicken with veggies in a wrap.',
      ingredients: ['Chicken', 'Lettuce', 'Tomato', 'Wrap bread'],
      instructions:
          'Grill chicken, chop veggies, and wrap everything in a tortilla.',
      calories: 410,
    ),
    Recipe(
      title: 'Sandwich',
      category: 'Lunch',
      imageUrl: 'assets/sandwich.jpg',
      description: 'A classic sandwich with fresh ingredients.',
      ingredients: ['Bread', 'Ham', 'Lettuce', 'Tomato', 'Cheese'],
      instructions:
          'Layer ham, cheese, and veggies between slices of bread and serve.',
      calories: 320,
    ),
    Recipe(
      title: 'Beef Stew',
      category: 'Lunch',
      imageUrl: 'assets/beef_stew.jpg',
      description: 'Hearty beef stew with vegetables.',
      ingredients: ['Beef', 'Potatoes', 'Carrots', 'Onions', 'Broth'],
      instructions:
          'Brown beef, add veggies and broth. Simmer for 2 hours until tender.',
      calories: 400,
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
      instructions:
          'Spread sauce on dough, add toppings, and bake at 220°C for 15-20 mins.',
      calories: 285,
    ),
    Recipe(
      title: 'Spaghetti',
      category: 'Dinner',
      imageUrl: 'assets/spaghetti.jpg',
      description: 'Classic spaghetti with tomato sauce.',
      ingredients: ['Spaghetti noodles', 'Tomato sauce', 'Garlic', 'Basil'],
      instructions:
          'Cook noodles, heat sauce with garlic, mix and serve with basil on top.',
      calories: 350,
    ),
    Recipe(
      title: 'Taco',
      category: 'Dinner',
      imageUrl: 'assets/taco.jpg',
      description: 'Crispy tacos filled with seasoned meat and toppings.',
      ingredients: ['Taco shells', 'Ground beef', 'Lettuce', 'Cheese', 'Salsa'],
      instructions:
          'Cook beef with seasoning, fill shells, add toppings and serve.',
      calories: 300,
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
