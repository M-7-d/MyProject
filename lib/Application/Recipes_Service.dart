import 'package:myproject/Data/RecipeRepository.dart';
import 'package:myproject/Domain/Recipes.dart';

class FetchAllRecipesUseCase {
  final RecipeRepository repository;

  FetchAllRecipesUseCase(this.repository);

  Future<List<RecipeModel>> call() async {
    return await repository.getAllRecipes();
  }
}

class GetRecipeByIdUseCase {
  final RecipeRepository repository;

  GetRecipeByIdUseCase(this.repository);

  Future<RecipeModel?> call(String id) async {
    return await repository.getRecipeById(id);
  }
}

class AddRecipeUseCase {
  final RecipeRepository repository;

  AddRecipeUseCase(this.repository);

  Future<void> call(RecipeModel recipe) async {
    await repository.addRecipe(recipe);
  }
}

class UpdateRecipeUseCase {
  final RecipeRepository repository;

  UpdateRecipeUseCase(this.repository);

  Future<void> call(RecipeModel recipe) async {
    await repository.updateRecipe(recipe);
  }
}

class DeleteRecipeUseCase {
  final RecipeRepository repository;

  DeleteRecipeUseCase(this.repository);

  Future<void> call(String id) async {
    await repository.deleteRecipe(id);
  }
}
