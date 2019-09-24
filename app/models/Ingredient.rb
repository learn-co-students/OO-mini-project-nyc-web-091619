require 'pry'
class Ingredient

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        # binding.pry

        allergies = {}
        Allergy.all.each do |allergen|
            allergies[allergen.ingredient] = 0 unless allergies[allergen.ingredient]
            allergies[allergen.ingredient] += 1
        end

        max_allergy = allergies.max_by do |allergen, count|
            count
        end

        max_allergy[0]
    end

end
