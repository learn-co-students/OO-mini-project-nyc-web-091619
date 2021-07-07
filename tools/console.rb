require_relative '../config/environment.rb'

rob = User.new
sarah = User.new


celery = Ingredient.new
milk = Ingredient.new
banana = Ingredient.new
flour = Ingredient.new
vanilla = Ingredient.new

ban_bread = Recipe.new
milk_bread = Recipe.new
malk_bread = Recipe.new
mak_bread = Recipe.new

rob.declare_allergy(flour)
sarah.declare_allergy(milk)

ri1 = RecipeIngredient.new(ban_bread, [banana, flour])
ri2 = RecipeIngredient.new(malk_bread, [milk, flour, vanilla])
ri3 = RecipeIngredient.new(milk_bread, [milk, flour, vanilla])
ri4 = RecipeIngredient.new(mak_bread, [milk, flour, vanilla])

rc1 = RecipeCard.new(rob, ban_bread, 1990, 4)
rc2 = RecipeCard.new(sarah, ban_bread, 1993, 4)
rc3 = RecipeCard.new(rob, milk_bread, 1990, 5)
rc4 = RecipeCard.new(sarah, malk_bread, 2017, 5)
rc5 = RecipeCard.new(sarah, mak_bread, 1980, 2)



binding.pry
