import 'package:myproject/Data/RecipeRepository.dart';
import 'package:myproject/Domain/Recipes.dart';

class InMemoryRecipeRepository implements RecipeRepository {
  final List<RecipeModel> _recipes = [];

  @override
  Future<List<RecipeModel>> getAllRecipes() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _recipes;
  }

  @override
  Future<RecipeModel?> getRecipeById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _recipes.firstWhere((recipe) => recipe.id == id);
  }

  @override
  Future<void> addRecipe(RecipeModel recipe) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _recipes.add(recipe);
  }

  @override
  Future<void> updateRecipe(RecipeModel recipe) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _recipes.indexWhere((r) => r.id == recipe.id);
    if (index != -1) {
      _recipes[index] = recipe;
    }
  }

  @override
  Future<void> deleteRecipe(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _recipes.removeWhere((recipe) => recipe.id == id);
  }
}
