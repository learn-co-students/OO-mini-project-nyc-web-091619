class User

    attr_reader :user

    @@all = []

    def initialize(user)
        @user = user
        # User.all should return all of the user instances
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        # User#recipes should return all of the recipes this user has recipe cards for
        ## iterate recipe cards to find recipes for a specific user
            recipe_cards.map{|card| card.recipe  }
    end
   
    def add_recipe_card(recipe, date, rating)
        # User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
        RecipeCard.new(recipe, self, date, rating)
    end

    def declare_allergy(ingredient)
        # User#declare_allergy should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
        Allergy.new(self, ingredient)
    end

    def allergens
        # User#allergens should return all of the ingredients this user is allergic to
        Allergy.all.select{ |allergen| allergen.user == self }.map { |card| card.recipe }
    end

    def recipe_cards
        RecipeCard.all.select{ |card| card.user == self }
    end

    def top_three_recipes
        # User#top_three_recipes should return the top three highest rated recipes for this user.
        recipe_cards.sort_by { |x| x.rating }.reverse.first(3).map { |card| card.recipe }    
    end

    def most_recent_recipe
        # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
        recipe_cards.last.recipe
    end

end