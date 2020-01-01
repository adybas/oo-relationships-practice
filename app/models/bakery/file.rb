# create files for your ruby classes in this directory
require_relative './bakery.rb'
require_relative './dessert.rb'
require_relative './ingredients.rb'
require 'pry'

puts "Testing Bakery.all"
bakery1 = Bakery.new("HunnyBun")
bakery2 = Bakery.new("Auntie Ann's")
 puts Bakery.all

 puts "*****************************"

 puts "Testing Dessert"
cookies = Dessert.new("Cookies", bakery1)
cereal = Dessert.new("Cereal", bakery1)
sweet = Dessert.new("Sweet", bakery2)

puts Dessert.all

 puts "*****************************"

 puts "Testing Ingriedients"

 sugar = Ingredient.new("sugar", cookies, 15)
 honey = Ingredient.new("honey", sweet, 30)
 salt = Ingredient.new("salt", cereal)
 pepper = Ingredient.new("pepper", cookies)
 fries = Ingredient.new("french fries", sweet, 20)

 puts Ingredient.all

 puts "*****************************"

puts cereal.calories == 0
puts cookies.calories == 15

puts Ingredient.find_all_by_name("fries")

puts bakery1.shopping_list

puts bakery1.average_calories

pp Dessert.all_dessert_names