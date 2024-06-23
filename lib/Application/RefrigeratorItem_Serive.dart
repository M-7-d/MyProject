import 'package:myproject/Data/RefrigeratorItemRepository.dart';
import 'package:myproject/Domain/RefrigeratorItem.dart';

class FetchAllItemsUseCase {
  final RefrigeratorItemRepository repository;

  FetchAllItemsUseCase(this.repository);

  Future<List<RefrigeratorItemModel>> call() async {
    return await repository.getAllItems();
  }
}

class GetItemByNameUseCase {
  final RefrigeratorItemRepository repository;

  GetItemByNameUseCase(this.repository);

  Future<RefrigeratorItemModel?> call(String name) async {
    return await repository.getItemByName(name);
  }
}

class AddItemUseCase {
  final RefrigeratorItemRepository repository;

  AddItemUseCase(this.repository);

  Future<void> call(RefrigeratorItemModel item) async {
    await repository.addItem(item);
  }
}

class UpdateItemUseCase {
  final RefrigeratorItemRepository repository;

  UpdateItemUseCase(this.repository);

  Future<void> call(RefrigeratorItemModel item) async {
    await repository.updateItem(item);
  }
}

class DeleteItemUseCase {
  final RefrigeratorItemRepository repository;

  DeleteItemUseCase(this.repository);

  Future<void> call(String name) async {
    await repository.deleteItem(name);
  }
}
