
# - #passenger
# - returns the passenger object for that ride
# - #driver
# - returns the driver object for that ride
#  - .average_distance
#  - should find the average distance of all rides

class Ride

    attr_reader :passenger, :driver, :distance
    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distance = self.all.sum do |ride|
            ride.distance
        end
        total_distance / self.all.length
    end

end
