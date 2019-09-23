class Ingredient

    attr_reader :most_common_allergen, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        # Ingredient.all should return all of the ingredient instances
        @@all
    end

    def self.most_common_allergen
        # Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
        @@all.max_by do |ingredient|
            Allergy.all.select { |allergen| allergen.ingredient == ingredient }.count
        end
    end
end

