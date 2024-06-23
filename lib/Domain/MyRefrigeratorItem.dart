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

class MyRefrigeratorItem {
  final String id;
  final String title;
  final List<String> category;
  final String days;
  final double quantity;
  final String unit;

  MyRefrigeratorItem({
    required this.id,
    required this.title,
    required this.category,
    required this.days,
    required this.quantity,
    required this.unit,
  });
  @override
  bool operator ==(Object other) {
    return id == (other as MyRefrigeratorItem).id;
  }

  factory MyRefrigeratorItem.fromMap(Map<String, dynamic> map) {
    return MyRefrigeratorItem(
      id: map['id'],
      title: map['title'],
      category: List<String>.from(map['category']),
      days: map['days'],
      quantity: map['quantity'],
      unit: map['unit'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'days': days,
      'quantity': quantity,
      'unit': unit,
    };
  }

  @override
  int get hashCode => super.hashCode;
}
