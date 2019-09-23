
### `Recipe`
Build the following methods on the Recipe class

<!-- - `Recipe.all`
should return all of the recipe instances
- `Recipe.most_popular`
should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
- `Recipe#users`
should return the user instances who have recipe cards with this recipe
- `Recipe#ingredients`
should return all of the ingredients in this recipe
- `Recipe#allergens`
should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system. -->
- `Recipe#add_ingredients`
should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

### `Allergy`
An Allergy is a join between a user and an ingredient.  This is a has-many-through relationship.  What methods should an instance of this model respond to?

<!-- - `Allergy.all`
should return all of the Allergy instances -->

### `User`
Build the following methods on the User class

<!-- - `User.all`
should return all of the user instances
- `User#recipes`
should return all of the recipes this user has recipe cards for
- `User#add_recipe_card`
should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
- `User#declare_allergy`
should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
- `User#allergens`
should return all of the ingredients this user is allergic to -->
- `User#top_three_recipes`
should return the top three highest rated recipes for this user.
- `User#most_recent_recipe`
should return the recipe most recently added to the user's cookbook.

### `RecipeCard`
A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
Build the following methods on the RecipeCard class:  

<!-- - `RecipeCard.all`
should return all of the RecipeCard instances
- `RecipeCard#date`
should return the date of the entry
- `RecipeCard#rating`
should return the rating (an integer) a user has given their entry
- `RecipeCard#user`
should return the user to which the entry belongs
- `RecipeCard#recipe`
should return the recipe to which the entry belongs -->

### `Ingredient`
Build the following methods on the Ingredient class

<!-- - `Ingredient.all`
should return all of the ingredient instances
- `Ingredient.most_common_allergen`
should return the ingredient instance that the highest number of users are allergic to -->


### `RecipeIngredient`
RecipeIngredient is the join between an ingredient and a recipe.  This is a has-many-through relationship
Build the following methods on the RecipeIngredient class

- `RecipeIngredient.all`
should return all of the RecipeIngredient instances
- `RecipeIngredient#ingredient`
should return the ingredient instance
- `RecipeIngredient#recipe`
should return the recipe instance

### `**Bonus**`
- `User#safe_recipes`
should return all recipes that do not contain ingredients the user is allergic to
- What other methods might be useful to have?
