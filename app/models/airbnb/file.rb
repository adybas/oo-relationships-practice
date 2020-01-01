require_relative './guests.rb'
require_relative './trips.rb'
require_relative './listings.rb'
require 'pry'
puts "\n"
puts "***********************************"

dc = Listing.new("DC")
philly = Listing.new("Philly")
sf = Listing.new("SF")

puts Listing.all
puts "\n"
puts "***********************************"

ania = Guest.new("Ania")
kaleena = Guest.new("Kaleena")
tomasz = Guest.new("Tommy")
puts Guest.all
puts "\n"
puts "***********************************"

trip1 = Trip.new(dc, ania)
trip2 = Trip.new(philly, ania)
trip3 = Trip.new(sf, tomasz)
trip4 = Trip.new(dc, kaleena)
puts Trip.all
puts "\n"
puts "***********************************"

puts "testing Guest Class"

puts ania.listings.include?(dc)
puts tomasz.listings.include?(sf)

puts kaleena.trip_count == 1 && ania.trip_count == 2

puts Guest.pro_traveller
puts "\n"

puts Guest.find_all_by_name("Kaleena")
puts "\n"
puts "***********************************"

puts "testing Listing Class"
puts dc.guests.include?(ania)
puts dc.guests.include?(kaleena)

puts dc.trip_count == 2
puts dc.trip_count

dc2 = Listing.new("DC")
puts Listing.find_all_by_city("DC")

puts Listing.find_all_by_city("DC").length == 2

puts Listing.most_popular.city_name





