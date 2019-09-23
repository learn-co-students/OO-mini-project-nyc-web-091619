require_relative '../config/environment.rb'

#recipes
r1 = Recipe.new("Salad")
r2 = Recipe.new("Cake")
r3 = Recipe.new("Pasta")
r4 = Recipe.new("Soup")

#users
u1 = User.new("Mary")
u2 = User.new("Anya")
u3 = User.new("Steven")

#recipe cards
rc1 = RecipeCard.new(r1, u1, "2019/09/23", 4)
rc2 = RecipeCard.new(r2, u2, "2019/09/22", 5)
rc3 = RecipeCard.new(r4, u1, "2018/09/23", 2)
rc4 = RecipeCard.new(r3, u1, "2018/08/23", 3)
rc5 = RecipeCard.new(r2, u1, "2018/07/23", 4)
rc6 = RecipeCard.new(r2, u1, "2018/06/23", 5)

#ingredients
i1 = Ingredient.new("Salt")
i2 = Ingredient.new("Butter")
i3 = Ingredient.new("Flour")

#recipe ingredients
ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r2, i2)
ri3 = RecipeIngredient.new(r3, i3)
ri4 = RecipeIngredient.new(r4, i2)
ri4 = RecipeIngredient.new(r2, i1)

#allergies

a1 = Allergy.new(i1, u1)
a2 = Allergy.new(i2, u1)
a3 = Allergy.new(i3, u2)
a4 = Allergy.new(i2, u3)
a5 = Allergy.new(i1, u2)

binding.pry
