class RecipeCard
    attr_reader :user, :date
    attr_accessor :recipe, :rating

    @@all = []

    def initialize(date, rating, user, recipe)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end
end