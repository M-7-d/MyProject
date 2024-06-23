import 'package:myproject/Data/MyRefrigeratorItem_repository.dart';
import 'package:myproject/Domain/MyRefrigeratorItem.dart';

class FetchAllItemsUseCase {
  final MyRefrigeratorRepository repository;

  FetchAllItemsUseCase(this.repository);

  Future<List<MyRefrigeratorItem>> call() async {
    return await repository.fetchItems();
  }
}

class AddItemUseCase {
  final MyRefrigeratorRepository repository;

  AddItemUseCase(this.repository);

  Future<void> call(MyRefrigeratorItem item) async {
    await repository.addItem(item);
  }
}

class UpdateItemUseCase {
  final MyRefrigeratorRepository repository;

  UpdateItemUseCase(this.repository);

  Future<void> call(MyRefrigeratorItem item) async {
    await repository.updateItem(item);
  }
}

class DeleteItemUseCase {
  final MyRefrigeratorRepository repository;

  DeleteItemUseCase(this.repository);

  Future<void> call(String id) async {
    await repository.deleteItem(id);
  }
}
