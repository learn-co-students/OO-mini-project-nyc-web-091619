class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end

    def recipes
        Recipe.all.select do |recipe|
            recipe.user == self
        end 
    end

    def add_recipe_card(recipe,date,rating)
        arc = RecipeCard.new(recipe,self,rating,date)
    end 

    def declare_allergy(ingredient)
        da = Allergy.new(self,ingredient)
    end 

    def allergens
        Allergy.all.select do |allergy|
            allergy.user == self
        end 
    end 

    def most_recent_recipe
        Recipe.all[-1]
    end













end #end of user