require_relative '../config/environment.rb'
require 'date'

#Init User class
u1 = User.new("John")
u2 = User.new("Alex")
u3 = User.new("Sam")

#Init Recipe class
r1 = Recipe.new("Sushi")
r2 = Recipe.new("Pizza")
r3 = Recipe.new("Vodka")
r4 = Recipe.new("Rice and beans")
r5 = Recipe.new("Lasagna")
r6 = Recipe.new("Chicken hot pie")
r7 = Recipe.new("Cherry pie")
r8 = Recipe.new("Tacos")

#Init Ingredient class
i1 = Ingredient.new("Salmon")
i2 = Ingredient.new("Water")
i3 = Ingredient.new("Dough")
i4 = Ingredient.new("Peanut Butter")
i5 = Ingredient.new("Milk")
i6 = Ingredient.new("Nuts")


#Joins

#Init Allergy class
a1 = Allergy.new(u1, i3)
a2 = Allergy.new(u1, i3)
a3 = Allergy.new(u2, i3)
a4 = Allergy.new(u2, i2)
a5 = Allergy.new(u2, i5)

#Init RecipeCard class
rc1 = RecipeCard.new(Date.new(2019,9,3), 5, u2, r3)
rc2 = RecipeCard.new(Date.new(2017,6,5), 1, u2, r2)
rc3 = RecipeCard.new(Date.new(2002,5,8), 2, u1, r2)
rc4 = RecipeCard.new(Date.new(2003,3,5), 3, u3, r2)
rc4 = RecipeCard.new(Date.new(2012,1,2), 3, u3, r4)

#Init RecipeIngredient class
ri1 = RecipeIngredient.new(i6, r1)
ri2 = RecipeIngredient.new(i2, r2)
ri3 = RecipeIngredient.new(i2, r3)
ri4 = RecipeIngredient.new(i4, r2)
ri5 = RecipeIngredient.new(i3, r3)


#Associations test

#User

u1.declare_allergy(i4)
u2.allergens

User.all
u3.recipes
u2.add_recipe_card(Date.new(2009,1,3), 3, r1)

u2.top_three_recipes.each{|recipe| recipe}

u2.most_recent_recipe

#Recipe
ing_array = [i3,i1,i4]

r3.add_ingredients(ing_array)

# Ingredient

p Ingredient.most_common_allergen




# binding.pry

