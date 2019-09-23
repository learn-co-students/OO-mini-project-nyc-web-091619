class RecipeIngredient

    attr_accessor :ingredient

    @@all = []

    def initialize
        # RecipeIngredient#ingredient should return the ingredient instance
        @ingredient = ingredient
        @all << self
    end

    def self.all
        # RecipeIngredient.all should return all of the RecipeIngredient instances
        @@all
    end
    
    # RecipeIngredient#recipe should return the recipe instance
end