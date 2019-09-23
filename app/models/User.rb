class User
    # User readers instead of explicit methods
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @@all.append(self)
  
      @name = name
    end
  
    # return all of the user instances
    def self.all
      @@all
    end
  
    # return all of the recipes this user has recipe cards for
    def recipes
      recipe_cards.map { |card| card.recipe }
    end
  
    # accept a recipe instance as an argument, as well as a date and rating, and
    # create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, date, rating)
      RecipeCard.new(recipe, self, date, rating)
    end
  
    # accept an ingredient instance as an argument, and create a new allergen
    def declare_allergen(ingredient)
      Allergen.new(self, ingredient)
    end
  
    # return all of the ingredients this user is allergic to
    def allergens
      Allergen.all.select { |allergen| allergen.user == self }.map { |allergen| allergen.ingredient }
    end
  
    # return the top three highest rated recipes for this user
    def top_three_recipes
      recipe_cards.sort_by { |x| x.rating }.reverse.first(3).map { |card| card.recipe }
    end
  
    # return the recipe most recently added to the user's cookbook
    def most_recent_recipe
      recipe_cards.last.recipe
    end
  
    # Helper methods to get this user's recipe cards
    def recipe_cards
      RecipeCard.all.select { |card| card.user == self }
    end
  
    # return all recipes that do not contain ingredients the user is allergic to
    def safe_recipes
      recipes.reject do |recipe|
        recipe.ingredients.any? { |ingredient| allergens.include?(ingredient) }
      end
    end
  end