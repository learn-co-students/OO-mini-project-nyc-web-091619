class Recipe

    attr_reader :name

    @@all = [] #should return all of the recipe instances

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @all
    end


    def self.most_popular #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)

        self.all.map do |recipe|
            recipe.users
        end
    end


    def allergens #should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.
        Ingredient.all.select do |allergen|
            allergen.users 

        end

    end


    def add_ingredients(ingredient) #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe


    end



end

