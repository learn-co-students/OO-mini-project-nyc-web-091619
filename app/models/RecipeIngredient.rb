class RecipeIngredient
    attr_reader :name, :ingredient, :recipe 

    @@all

    def initialize(recipe,ingredient)
        @name = name
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end 

    def self.all
        @@all 
    end

    def ingredient(ingredient)
        self.all.select do |recipeingredient|
            recipeingredient.ingredient == ingredient
        end 
    end 

    def recipe(recipe)
        self.all.select do |recipeingredient|
            recipeingredient.recipe == recipe
        end
    end
end #end of recipeingredient