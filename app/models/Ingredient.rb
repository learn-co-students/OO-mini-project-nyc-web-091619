
class Ingredient
    # User readers instead of explicit methods
    attr_reader :name
  
    @@all = []
  
    def initialize(name)
      @@all.append(self)
  
      @name = name
    end
  
    # return all of the ingredient instances
    def self.all
      @@all
    end

end