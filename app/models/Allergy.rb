class Allergy 

    attr_reader :user
    attr_accessor :ingredient

    @@all = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end

    def self.all 
        @@all
    end



end # end of Allergy class