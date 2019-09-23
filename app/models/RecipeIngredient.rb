class RecipeIngredient
    attr_reader :ingredient, :recipe
  
    @@all = []
  
    def initialize(recipe, ingredient)
      @@all.append(self)
  
      @recipe = recipe
      @ingredient = ingredient
    end
  
    # return all of the RecipeIngredient instances
    def self.all
      @@all
    end
  end