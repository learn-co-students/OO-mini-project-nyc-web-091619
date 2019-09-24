require_relative '../config/environment.rb'

r1 = Recipe.new("Chicken Broccoli")
r2 = Recipe.new("Roast Beef")
r3 = Recipe.new("Pork Loin")

u1 = User.new("Jeff")
u2 = User.new("Richard")
u3 = User.new("Evans")

i1 = Ingredient.new("chicken")
i2 = Ingredient.new("Broccoli")
i3 = Ingredient.new("Beef")
i4 = Ingredient.new("Pork")

a1 = Allergy.new(u1,i2)
a2 = Allergy.new(u2,i4)
a3 = Allergy.new(u3,i1)
a4 = Allergy.new(u1,i4)

rc1 = RecipeCard.new(u1,r2,"9/23/2019",3)
rc2 = RecipeCard.new(u2,r1,"9/21/2019",4)
rc3 = RecipeCard.new(u2,r2,"9/27/2019",1)
rc4 = RecipeCard.new(u3,r2,"9/25/2019",2)
rc5 = RecipeCard.new(u3,r3,"9/21/2019",5)

ri1 = RecipeIngredient.new(r1,i1)
ri1 = RecipeIngredient.new(r1,i2)
ri1 = RecipeIngredient.new(r2,i3)
ri1 = RecipeIngredient.new(r3,i4)
