import 'package:myproject/Domain/RefrigeratorItem.dart';

abstract class RefrigeratorItemRepository {
  Future<List<RefrigeratorItemModel>> getAllItems();
  Future<RefrigeratorItemModel?> getItemByName(String name);
  Future<void> addItem(RefrigeratorItemModel item);
  Future<void> updateItem(RefrigeratorItemModel item);
  Future<void> deleteItem(String name);
}
