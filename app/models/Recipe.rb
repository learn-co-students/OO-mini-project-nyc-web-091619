class Recipe
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.most_popular
    # binding.pry

    recipe_hash = {}
    RecipeCard.all.each do |rc|
      recipe_hash[rc.recipe] = 0 unless recipe_hash[rc.recipe]
      recipe_hash[rc.recipe] += 1
    end
    max_recipe = recipe_hash.max_by {|recipe, count| count}
    max_recipe[0]
    
    # binding.pry
  end

  def users
    my_recipes = RecipeCard.all.select do |rc|
      rc.recipe == self
    end

    users = my_recipes.map do |rc|
      rc.user
    end
  end

  def allergens
    my_alergens = Allergy.all.select do |allergen|
      self.ingredients.include?(allergen.ingredient)
    end
    my_alergens.map do |allergy|
      allergy.ingredient
    end
  end

  def ingredients
    # Get ingredients from RI table
    mine = RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
    mine.map {|ri| ri.ingredient}.flatten
    

  end

  def add_ingredient(ingredients)
    # Add ingredients to RI table
    RecipeIngredient.new(self, ingredients)
  end

end