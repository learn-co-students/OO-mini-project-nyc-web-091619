
class Ingredient

    attr_accessor :ingredient

    @@all = []
    
    def initialize(ingredient)
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        mapped_ingredients = Allergy.all.map { |allergy| allergy.ingredient }
        mapped_ingredients.max_by { |ingredient| mapped_ingredients.count(ingredient) }
    end #should return the Allergy that belongs to the most Users

end #end of Ingredient class