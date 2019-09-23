class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
# User.all should return all of the user instances

    def self.all
        @@all
    end
# User#recipes should return all of the recipes this user has recipe cards for
# User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
# User#declare_allergy should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
# User#allergens should return all of the ingredients this user is allergic to
# User#top_three_recipes should return the top three highest rated recipes for this user.
# User#most_recent_recipe should return the recipe most recently added to the user's cookbook.

end