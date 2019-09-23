class User 

    attr_accessor :name

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def recipes
        my_cards = RecipeCard.all.select do |rc|
            rc.user == self
        end

        my_cards.map do |rc|
            rc.recipe 
        end
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def allergens
        my_allergies = Allergy.all.select do |allergy|
            allergy.user == self
        end 

        my_allergies.map do |allergy|
            allergy.ingredient
        end
    end

    def top_three_recipes
        my_recipes = RecipeCard.all.select do |rc|
            rc.user == self 
        end

        popular = {}
        my_recipes.each do |rc|
            popular[rc.recipe] = rc.rating
        end

        sorted_popular = popular.sort_by do |rc, rating|
            rating 
        end

        sorted_popular.last(2)
    end

    def most_recent_recipe
        my_recipes = RecipeCard.all.select do |rc|
            rc.user == self 
        end

        my_recipes.max_by {|rc| rc.date}.recipe
    end

    def safe_recipes
        Recipe.all.select do |rc|
            !rc.ingredients.include?(self.allergens)
        end
    end

end