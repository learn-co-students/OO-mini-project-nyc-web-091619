require 'pry'
class Recipe
    
    attr_reader :name
    
    @@all= []
    
    def initialize(name)
        @name = name
        @@all << self
        #binding.pry
    end
    
    def self.all
        # Recipe.all should return all of the recipe instances
        @@all
    end

    
    def self.most_popular
        # Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
        Recipe.all.max_by do |recipe|
            RecipeCard.all.select do |card|
                card.recipe == recipe
            end.count
        end
    end

    def users
        # Recipe#users should return the user instances who have recipe cards with this recipe
        RecipeCard.all.select { |rec_ing| rec_ing.recipe == self }.map { |recipe| recipe.ingredient }
    end

    def allergens
        # Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
        ingredients.select do |ingredient|
            Allergy.all.map {|allergen| allergen.ingredient }.uniq.include?(ingredient)}
        end
    end

    def add_ingredients(ingredients)
        # Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
        ingredients.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end

    def ingredients
        # Recipe#ingredients should return all of the ingredients in this recipe
        RecipeIngredient.all.select { |rec_ing| rec_ing.recipe == self }.map { |recipe| recipe.ingredient }
    end

end