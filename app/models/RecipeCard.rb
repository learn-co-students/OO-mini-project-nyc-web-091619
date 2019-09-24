class RecipeCard

    attr_reader :user, :recipec, :date, :rate

    @@all = []

    def initialize(user,recipe,date,rate)
        @user = user
        @recipe = recipe
        @date = date
        @rate = rate
        @@all << self
    end

    def self.all
        @@all 
    end

    def rc_date(date)
        self.all.select do |recipecard|
            recipecard.date == date
        end
    end

    def rating(rate)
        self.all.select do |recipecard|
            recipecard.rate == rate
        end
    end

    def rc_user(user)
        self.all.select do |recipecard|
            recipecard.user == user
        end
    end

    def rc_recipe(recipe)
        self.all.select do |recipecard|
            recipecard.recipe == recipe
        end
    end
end #end of recipecard