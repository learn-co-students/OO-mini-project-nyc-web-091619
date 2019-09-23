class Recipe
    # User readers instead of explicit methods
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @@all.append(self)
  
      @name = name
    end
  
    # return all of the recipe instances
    def self.all
      @@all
    end
  
    # return the recipe instance with the highest number of users
    def self.most_popular
      Recipe.all.max_by do |recipe|
        RecipeCard.all.select do |card|
          card.recipe == recipe
        end.count
      end
    end
  
    # return the user instances who have recipe cards with this recipe
    def users
      RecipeCard.all.select { |rc| rc.recipe == self }.map { |rc| rc.user }
    end
  
    def ingredients
      RecipeIngredient.all.select { |rec_ing| rec_ing.recipe == self }.map { |recipe| recipe.ingredient }
    end
  
    # return all of the ingredients in this recipe that are allergens
    def allergens
      # Iterate over all the ingredients in this recipe
      ingredients.select do |ingredient|
        Allergen.all.map { |allergen| allergen.ingredient }.uniq.include?(ingredient)
      end
    end
  
    def add_ingredients(ingredients)
      ingredients.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end
  end