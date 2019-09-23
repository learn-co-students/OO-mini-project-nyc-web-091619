class RecipeCard

    attr_reader :user
    attr_accessor :date, :rating, :recipe

    @@all = []

    def initialize(date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        # RecipeCard.all should return all of the RecipeCard instances
        @@all
    end
# RecipeCard#date should return the date of the entry
# RecipeCard#rating should return the rating (an integer) a user has given their entry
# RecipeCard#user should return the user to which the entry belongs
# RecipeCard#recipe should return the recipe to which the entry belongs
end