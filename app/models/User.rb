class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def my_recipe_cards
        RecipeCard.all.select do |recipe_card| 
            recipe_card.user == self
        end
    end

    def recipes
        my_recipe_cards.map {|recipe_card| recipe_card.recipe}
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(recipe, self, date, rating)
    end

    def declare_allergy(ingredient)
        Allergy.new(ingredient, self)
    end

    def my_allergies
        Allergy.all.select do |allergy| 
            allergy.user == self
        end
    end

    def allergens
        my_allergies.map {|allergy| allergy.ingredient}
    end

    def top_three_recipes
        my_recipe_cards.max_by(3) {|recipe_card| recipe_card.rating}
    end

    def most_recent_recipe
        my_recipe_cards.max_by {|recipe_card| recipe_card.date}
    end

    def safe_recipes
        recipes.select {|recipe| is_safe?(recipe)}.uniq
    end

    def is_safe?(recipe)
        (recipe.ingredients & allergens) == []

    end
    
    def self.all 
        @@all
    end

end