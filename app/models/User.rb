class User 

    attr_reader :name
    attr_accessor :allergy

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergies
        Allergy.all.select{|allergy| allergy.user == self}
    end

    def allergens
        allergies.map{|allergy| allergy.ingredient}
    end

    def self.all
        @@all
    end

    def recipe_cards
        RecipeCard.all.select{|recipe_card| recipe_card.user == self}
    end

    def recipes
        recipe_cards.map{|recipe_card| recipe_card.recipe}
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def top_three_recipes
        recipe_cards.max(3){|recipe_card| recipe_card.rating}
    end

    def most_recent_recipe
        RecipeCard.all.pop
    end

end # end of User class