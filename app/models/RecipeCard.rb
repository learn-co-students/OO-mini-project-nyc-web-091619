class RecipeCard

    attr_accessor :rating
    attr_reader :user, :recipe, :date

    @@all = []

    def initialize(user, recipe, date, rating)
        @date=date
        @rating=rating
        @user=user
        @recipe=recipe
        @@all << self
    end

    def self.all
        @@all
    end


end

