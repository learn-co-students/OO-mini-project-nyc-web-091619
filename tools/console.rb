require_relative '../config/environment.rb'

rob = User.new
sarah = User.new

celery = Ingredient.new
milk = Ingredient.new

rob.declare_allergy(celery)
sarah.declare_allergy(celery)

binding.pry
