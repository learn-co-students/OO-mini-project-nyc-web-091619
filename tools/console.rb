require_relative '../config/environment.rb'

r1 = Recipe.new("Chicken Noodles")
r2 = Recipe.new("Grilled Meat")

n1 = User.new("Jason")
n2 = User.new("Herbert")

rc1 = RecipeCard.new("09/23/19", 5, n1, r2)
rc2 = RecipeCard.new("09/23/19", 3, n2, r1)
rc3 = RecipeCard.new("09/23/19", 3, n2, r2)



in1 = Ingredient.new("Noodles")
in2 = Ingredient.new("Tomato")
in3 = Ingredient.new("Salt")
in4 = Ingredient.new("Black Pepper")
in5 = Ingredient.new("Olive Oil")



binding.pry