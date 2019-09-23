require "pry"
class Recipe
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def my_recipe_cards
        RecipeCard.all.select do |recipe_card| 
            recipe_card.recipe == self
        end
    end

    def users
        my_recipe_cards.map {|recipe_card| recipe_card.user}.uniq
    end

    def my_recipe_ingredients
        RecipeIngredient.all.select do |recipe_ingredient| 
            recipe_ingredient.recipe == self
        end
    end

    def ingredients
        my_recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ingredient}
    end

    def allergens
        users.map {|user| user.allergens}.uniq
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end

    def self.all
        @@all
    end

    def self.most_popular
        all.max_by {|recipe| recipe.my_recipe_cards.count}
    end
end