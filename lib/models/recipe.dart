class Recipe {
  final String title;
  final String category;
  final String imageUrl;
  final String description;
  final List<String> ingredients;

  Recipe({
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
  });

  // Convert recipe to Map for local storage
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'category': category,
      'imageUrl': imageUrl,
      'description': description,
      'ingredients': ingredients.join(','),
    };
  }

  // Convert Map back to Recipe object
  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      title: map['title'],
      category: map['category'],
      imageUrl: map['imageUrl'],
      description: map['description'],
      ingredients: map['ingredients'].split(','),
    );
  }
}
