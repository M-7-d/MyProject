class RefrigeratorItemModel {
  final String name;
  final String purchaseDate;
  final String expirationDate;
  final String quantity;
  final String unit;
  final String marketName;
  final String notes;

  RefrigeratorItemModel({
    required this.name,
    required this.purchaseDate,
    required this.expirationDate,
    required this.quantity,
    required this.unit,
    required this.marketName,
    required this.notes,
  });

  factory RefrigeratorItemModel.initial() {
    return RefrigeratorItemModel(
      name: '',
      purchaseDate: '',
      expirationDate: '',
      quantity: '',
      unit: '',
      marketName: '',
      notes: '',
    );
  }

  RefrigeratorItemModel copyWith({
    String? name,
    String? purchaseDate,
    String? expirationDate,
    String? quantity,
    String? unit,
    String? marketName,
    String? notes,
  }) {
    return RefrigeratorItemModel(
      name: name ?? this.name,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      expirationDate: expirationDate ?? this.expirationDate,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      marketName: marketName ?? this.marketName,
      notes: notes ?? this.notes,
    );
  }

  factory RefrigeratorItemModel.fromMap(Map<String, dynamic> map) {
    return RefrigeratorItemModel(
      name: map['name'],
      purchaseDate: map['purchaseDate'],
      expirationDate: map['expirationDate'],
      quantity: map['quantity'],
      unit: map['unit'],
      marketName: map['marketName'],
      notes: map['notes'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'purchaseDate': purchaseDate,
      'expirationDate': expirationDate,
      'quantity': quantity,
      'unit': unit,
      'marketName': marketName,
      'notes': notes,
    };
  }
}
