class Recipe 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def Recipe.most_popular
        recipes_hash = {}
        RecipeCard.all.map do |recipe_card|
           if recipes_hash[recipe_card.recipe]
            recipes_hash[recipe_card.recipe] += 1
           else
            recipes_hash[recipe_card.recipe] = 1
           end
        end
        # sorted_hash = recipes_hash.sort_by{ |recipe_card, count| count}.reverse
        # sorted_hash[0][0]
        recipes_hash.sort_by{ |recipe_card, count| count}.reverse.max_by{|key| key[1]}[0]
    end
    
    def recipe_cards
        RecipeCard.all.select{|recipe_card| recipe_card.recipe == self}
    end
    def users
        recipe_cards.map{|recipe_card| recipe_card.user}
    end

    def recipe_ingredients
        RecipeIngredient.all.select{|recipe_ingredient| recipe_ingredient.recipe == self}
    end

    def ingredients
        recipe_ingredients.map{|recipe_ingredient| recipe_ingredient.ingredient}
    end

    def allergens
        user_allergens = users.map { |user| user.allergens }.flatten
        ingredients & user_allergens
        binding.pry

    end

    def add_ingredients(ingredient_array)
        ingredient_array.each { |ingredient| RecipeIngredient.new(ingredient, self) }
    end


end # end of User class