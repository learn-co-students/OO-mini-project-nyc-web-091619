class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_cards
        RecipeCard.all.select do |recipe_card|
            #Look for MY cards within RC
            recipe_card.user == self
        end
    end
    

    def recipes
        #Separate recipes
        my_cards.map do |recipe_card|
            #Return recipes
            recipe_card.recipe
        end
    end

    def add_recipe_card(recipe, date, rating)
        #Create new RC for this user and given recipe
        RecipeCard.new(self, recipe, date, rating)
        # binding.pry
    end

    def top_three_recipes
        #Find all MY recipes (since I am the user)
        # my_cards
        #Get all ratings for my recipes
        my_rating = my_cards.sort_by do |recipe_card|
            recipe_card.rating
        end
        descending = my_rating.reverse.first(3)
        #Sort all my recipes from highest to lowest ratings
        # my_rating.sort_by
        #Display first(top) three rated recipes
    end
    
    def most_recent_recipe
        #Obtain all of MY recipes
        my_most_recent = my_cards.sort_by do |recipe_card|
                recipe_card.date
        end
        #Find recipe with highest date
        descending = my_most_recent.last


    end


end #User Class


# should return the top three highest rated recipes for this user.


#Notes
    # def recipes
    #     #User needs access to RecipeCard in order to view recipe
    #     #Look through ALL RecipeCards
    #     my_cards = RecipeCard.all.select do |recipe_card|
    #         #Look for MY cards within RC
    #         recipe_card.user == self
    #     end
    #     #Separate recipes
    #     my_cards.map do |recipe_card|
    #         #Return recipes
    #         recipe_card.recipe
    #     end
    # end







#     def add_recipe_card(recipe, date, rating) #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
#         RecipeCard.new(self, recipe, date, rating)
#     end

#     def my_recipe_card
#         # self.RecipeCard.new
#         binding.pry
#     end


#     def declare_allergy(ingredient) #should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
#         Allergy.new(self, ingredient)
#     end

#     def allergens #should return all of the ingredients this user is allergic to
#         declare_allergy.select do |allergen|
#             allergen.name == self
#         end
#     end

#     def top_three_recipes # should return the top three highest rated recipes for this user.
#         User.sort { |a,b| a.rating <=> b.rating }
#         end



#     end

#     def most_recent_recipe # should return the recipe most recently added to the user's cookbook.
#         RecipeCard.select do |date|
#             dating.user > time.now
#     end

# end
