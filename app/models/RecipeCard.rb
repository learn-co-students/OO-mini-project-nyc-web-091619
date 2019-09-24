require 'date'

class RecipeCard

    attr_accessor :recipe, :user_name, :rating, :date

    @@all = []
    
    def initialize(recipe, user_name, rating, date)
        @user_name = user_name
        @recipe = recipe
        @rating = rating
        @date = Date.parse(date)
        @@all << self 
    end

    def self.all
        @@all
    end


end