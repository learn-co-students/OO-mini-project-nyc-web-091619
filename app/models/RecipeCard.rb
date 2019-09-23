# A RecipeCard is the join between a user instance and a recipe instance.
class RecipeCard
    # User readers instead of explicit methods
    attr_reader :date, :rating, :user, :recipe
  
    @@all = []
  
    def initialize(recipe, user, date, rating)
      @@all << (self)
  
      @recipe = recipe
      @user = user
      @date = date
      @rating = rating
    end
  
    # return all of the RecipeCard instances
    def self.all
      @@all
    end
  end