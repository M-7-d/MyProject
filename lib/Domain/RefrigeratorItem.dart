import 'package:get/get.dart';

class RefrigeratorItemModel extends GetxController {
  final String name;
  final DateTime purchaseDate;
  final DateTime expirationDate;
  final int quantity;
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
  @override
  bool operator ==(Object other) {
    return name == (other as RefrigeratorItemModel).name;
  }

  factory RefrigeratorItemModel.fromMap(Map<String, dynamic> map) {
    return RefrigeratorItemModel(
      name: map['name'],
      purchaseDate: DateTime.parse(map['purchaseDate']),
      expirationDate: DateTime.parse(map['expirationDate']),
      quantity: map['quantity'],
      unit: map['unit'],
      marketName: map['marketName'],
      notes: map['notes'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'purchaseDate': purchaseDate.toIso8601String(),
      'expirationDate': expirationDate.toIso8601String(),
      'quantity': quantity,
      'unit': unit,
      'marketName': marketName,
      'notes': notes,
    };
  }

  @override
  int get hashCode => super.hashCode;
}
