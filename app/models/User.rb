class User 

    attr_accessor :name, :allergens

    @@all = []

    def initialize(allergens=[])
        @allergens = allergens
        @@all << self
    end

    def self.all
        @@all
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end


end