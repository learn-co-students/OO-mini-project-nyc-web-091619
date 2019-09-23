require_relative '../config/environment.rb'

u1 = User.new("Bob")
u2 = User.new("Edge")
u3 = User.new("Bill")


r1 = Recipe.new("Chocolate Cake")
r2 = Recipe.new("Meatloaf")
r3 = Recipe.new("Salad")


rc1 = RecipeCard.new(u1, r1, "2019-09-21", 10)
rc2 = RecipeCard.new(u2, r2, "2019-09-21", 7)
rc3 = RecipeCard.new(u3, r3, "2019-09-25", 3)
rc4 = RecipeCard.new(u3, r2, "2019-09-26", 1)
rc5 = RecipeCard.new(u3, r1, "2019-09-27", 5)
rc6 = RecipeCard.new(u2, r1, "2019-09-12", 3)
rc7 = RecipeCard.new(u2, r3, "2019-09-12", 8)
rc7 = RecipeCard.new(u2, r3, "2019-09-15", 1)



binding.pry

