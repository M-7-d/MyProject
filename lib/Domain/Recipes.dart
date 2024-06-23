enum Category {
  Pastries,
  Grills,
  Soups,
  All,
}

extension CategoryExtension on Category {
  String get name {
    switch (this) {
      case Category.Pastries:
        return 'Pastries';
      case Category.Grills:
        return 'Grills';
      case Category.Soups:
        return 'Soups';
      case Category.All:
        return 'All';
      default:
        return '';
    }
  }
}

class RecipeModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final List<String> categories;
  final int likes;
  final int comments;
  final int shares;

  RecipeModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.categories,
    required this.likes,
    required this.comments,
    required this.shares,
  });
  @override
  bool operator ==(Object other) {
    return id == (other as RecipeModel).id;
  }

  factory RecipeModel.fromMap(Map<String, dynamic> map) {
    return RecipeModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      categories: List<String>.from(map['categories']),
      likes: map['likes'],
      comments: map['comments'],
      shares: map['shares'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'categories': categories,
      'likes': likes,
      'comments': comments,
      'shares': shares,
    };
  }

  @override
  int get hashCode => super.hashCode;
}
