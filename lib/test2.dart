import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/Domain/RefrigeratorItem.dart';

class ItemsController extends StateNotifier<RefrigeratorItemModel> {
  ItemsController() : super(RefrigeratorItemModel.initial());

  final formKey = GlobalKey<FormState>();
  void updateName(String value) {
    state = state.copyWith(name: value);
  }

  void updatePurchaseDate(String value) {
    state = state.copyWith(purchaseDate: value);
  }

  void updateExpirationDate(String value) {
    state = state.copyWith(expirationDate: value);
  }

  void updateQuantity(String value) {
    state = state.copyWith(quantity: value);
  }

  void updateUnit(String value) {
    state = state.copyWith(unit: value);
  }

  void updateMarketName(String value) {
    state = state.copyWith(marketName: value);
  }

  void updateNotes(String value) {
    state = state.copyWith(notes: value);
  }
}

final itemsProvider =
    StateNotifierProvider<ItemsController, RefrigeratorItemModel>((ref) {
  return ItemsController();
});
