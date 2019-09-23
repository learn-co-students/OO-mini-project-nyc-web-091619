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

    def Ingredient.most_common_allergen
        #all of the allery' class
        allergens_hash = {}
        Allergy.all.map do |allergy|
           if allergens_hash[allergy.ingredient]
            allergens_hash[allergy.ingredient] += 1
           else
            allergens_hash[allergy.ingredient] = 1
           end
        end
        allergens_hash.sort_by{ |allergen, count| count}
            .reverse.max_by{|key| key[1]}[0]
    end

end # end of User class