import 'package:myproject/Data/MyRefrigeratorItem_repository.dart';
import 'package:myproject/Domain/MyRefrigeratorItem.dart';

class RefrigeratorRepositoryImp implements MyRefrigeratorRepository {
  final List<MyRefrigeratorItem> _items = [];

  @override
  Future<List<MyRefrigeratorItem>> fetchItems() async {
    return _items;
  }

  @override
  Future<void> addItem(MyRefrigeratorItem item) async {
    _items.add(item);
  }

  @override
  Future<void> updateItem(MyRefrigeratorItem item) async {
    int index = _items.indexWhere((i) => i.id == item.id);
    if (index != -1) {
      _items[index] = item;
    }
  }

  @override
  Future<void> deleteItem(String id) async {
    _items.removeWhere((item) => item.id == id);
  }
}
