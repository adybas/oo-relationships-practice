require_relative './passenger.rb'
require_relative './driver.rb'
require_relative './ride.rb'
require 'pry'
puts "\n"
puts "***********************************"

sam = Driver.new("Sam")
dean = Driver.new("Dean")
jenny = Driver.new("Jenny")
puts Driver.all

skylar = Passenger.new("Skylar")
amia = Passenger.new("Amia")
maria = Passenger.new("Maria")
puts Passenger.all

ride1 = Ride.new(skylar, sam, 150)
ride2 = Ride.new(amia, dean, 15)
ride3 = Ride.new(maria, jenny, 101)
ride4 = Ride.new(maria, jenny, 200)
puts Ride.all

puts "***********************************"

puts Ride.average_distance

puts amia.total_distance == 15.0
puts amia.total_distance.class
puts Passenger.premium_members
puts "***********************************"
puts Driver.mileage_cap(200)
