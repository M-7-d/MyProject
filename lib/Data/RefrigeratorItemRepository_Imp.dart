import 'package:myproject/Data/RefrigeratorItemRepository.dart';
import 'package:myproject/Domain/RefrigeratorItem.dart';

class InMemoryRefrigeratorItemRepository implements RefrigeratorItemRepository {
  final List<RefrigeratorItemModel> _items = [];

  @override
  Future<List<RefrigeratorItemModel>> getAllItems() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _items;
  }

  @override
  Future<RefrigeratorItemModel?> getItemByName(String name) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _items.firstWhere((item) => item.name == name);
  }

  @override
  Future<void> addItem(RefrigeratorItemModel item) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _items.add(item);
  }

  @override
  Future<void> updateItem(RefrigeratorItemModel item) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _items.indexWhere((i) => i.name == item.name);
    if (index != -1) {
      _items[index] = item;
    }
  }

  @override
  Future<void> deleteItem(String name) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _items.removeWhere((item) => item.name == name);
  }
}
