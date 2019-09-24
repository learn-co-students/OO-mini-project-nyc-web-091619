class Recipe

    attr_reader :name
    @@all = []

    def initialize(name, recipe_ingredients, recipe_card)
        @name = name
        @recipe_ingredients
        @recipe_card
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.most_popular
        self.all.max_by do |recipe|
        ingredient.recipe_cards.length
        end
    end

    def users
        self.all.select do |recipe|
            recipe.user = self
        end 
    end

    def ingredients
        self.all.map do |recipe|
            recipe.recipe_ingredient = self
        end 
    end

    def allergens
        self.ingredients.select do |ingredient|
            Allergy.allergens.include?(ingredient)
        end
    end


        











end #end of recipe