import 'models/ingredient.dart';
import 'models/recipe.dart';

abstract class Repository {
  //interface....
  List<Recipe> findAllRecipes();
  Recipe findRecipeById(int id);
  List<Ingredient> findAllIngredients();
  List<Ingredient> findRecipeIngredients(int recipedId);

  int insertRecipe(Recipe recipe);
  List<int> insertIngredients(List<Ingredient> ingredients);

  void deleteRecipe(Recipe recipe);
  void deleteIngredient(Ingredient ingredient);
  void deleteIngredients(List<Ingredient> ingredients);
  void deleteRecipeIngredients(int recipeId);

  Future create();
  void close();
}
