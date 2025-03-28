class Recipe {
  final String title;
  final String category;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  bool isLiked;

  Recipe({
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
    this.isLiked = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'category': category,
      'imageUrl': imageUrl,
      'description': description,
      'ingredients': ingredients.join(','),
    };
  }

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
