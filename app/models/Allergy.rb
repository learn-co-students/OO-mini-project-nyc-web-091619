
class Allergy

    attr_accessor :user_name, :ingredient

    @@all = []
    
    def initialize(user_name, ingredient)
        @user_name = user_name
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end


end #end of Allergy class
