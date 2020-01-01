# - #drivers
#   - returns all drivers a passenger has ridden with
# - #rides
#   - returns all rides a passenger has been on
# - .all
#   - returns an array of all passengers
# - #total_distance
#   - should calculate the total distance the passenger has travelled with the
#     service
# - .premium_members
#   - should find all passengers who have travelled over 100 miles with the service

  class Passenger

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        self.rides.collect do |ride|
            ride.driver
        end
    end

    def total_distance
        total_miles = rides.sum do |ride|
            ride.distance
        end
        total_miles
    end

    def self.premium_members
        # Ride.all.collect do |ride| # gives us true/false for each ride (ie. ride1, ride2)
        #     ride.distance > 100
        # end
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

  end