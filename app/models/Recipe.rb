
class Recipe

    attr_accessor :name, :ingredient
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredient
        RecipeIngredient.all.select { |ri| ri.recipe == self }
    end #should return an array of all ingredients

    def users
        RecipeCard.all.select do |rc| 
            rc.recipe == self
            # to be revisited: need to pull out users only, not RC's
        end
    end

end #end of Recipe class
