import 'package:myproject/Domain/MyRefrigeratorItem.dart';

abstract class MyRefrigeratorRepository {
  Future<List<MyRefrigeratorItem>> fetchItems();
  Future<void> addItem(MyRefrigeratorItem item);
  Future<void> updateItem(MyRefrigeratorItem item);
  Future<void> deleteItem(String id);
}
