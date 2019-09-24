require_relative '../config/environment.rb'



r1 = Recipe.new("Carbonara")
r2 = Recipe.new("Chicken Parm")
r3 = Recipe.new("Caesar Salad")
r4 = Recipe.new("Pizza")

user1 = User.new("Connor")
user2 = User.new("Jim")
user3 = User.new("John")

i1 = Ingredient.new("chicken")
i2 = Ingredient.new("bacon")
i3 = Ingredient.new("cheese")
i4 = Ingredient.new("salt")
i5 = Ingredient.new("pepper")
i6 = Ingredient.new("lettuce")

ring1 = RecipeIngredient.new(r1,i1)
ring2 = RecipeIngredient.new(r1,i2)
ring3 = RecipeIngredient.new(r1,i3)
ring4 = RecipeIngredient.new(r2,i1)
ring5 = RecipeIngredient.new(r2,i5)
ring6 = RecipeIngredient.new(r3,i6)

rc1 = RecipeCard.new(r1, user1, 3, '2019/07/07')
rc2 = RecipeCard.new(r2, user1, 5, '2009/12/21')
rc3 = RecipeCard.new(r3, user2, 2, '2020/12/01')
rc4 = RecipeCard.new(r2, user3, 4, '2021/05/21')
rc5 = RecipeCard.new(r3, user1, 1, '2019/04/02')
rc6 = RecipeCard.new(r4, user1, 3, '2019/01/03')

a1 = Allergy.new(user1, i6)
a2 = Allergy.new(user2, i1)
a3 = Allergy.new(user3, i4)
a4 = Allergy.new(user2, i3)
a5 = Allergy.new(user1, i4)

# RecipeCard.all.select { |rc| rc.recipe == self}

binding.pry

