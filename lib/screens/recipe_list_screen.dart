import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/recipe_provider.dart';
import 'recipe_detail_screen.dart';

class RecipeListScreen extends StatelessWidget {
  final String category;

  RecipeListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final recipes =
        Provider.of<RecipeProvider>(context).getRecipesByCategory(category);

    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipeDetailScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
