# require 'date' #for date sorting/formatting
require 'pry'

class User

    attr_accessor :recipe, :user_name, :allergens

    @@all = []
    
    def initialize(user_name)
        @user_name = user_name
        @@all << self 
    end

    def self.all
        @@all
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, rating, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy|
            allergy.user_name == self
        end
    end

    def top_three_recipes
        # look at self
        mapped_recipes = RecipeCard.all.select {|rc| rc.user_name == self}

        # sort by rating
        (mapped_recipes.sort_by{|rcard| -rcard.rating}).take(3)
    end # should return the three Recipes with the highest average Rating

    def most_recent_recipe
        mapped_recipes = RecipeCard.all.select {|rc| rc.user_name == self}
        (ar1 = mapped_recipes.sort_by {|rcard| rcard.date}).last

    end # should sort the array of recipes by DATE (descending) and return the first object

    # binding.pry


end #end of User class
