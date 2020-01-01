# - #passengers
#   - returns all passengers a driver has had
# - #rides
#   - returns all rides a driver has made
# - .all
#   - returns an array of all drivers
# - .mileage_cap(distance)
#   - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage

  class Driver

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
            ride.driver == self
        end
    end

    def passengers
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def total_distance
        self.rides.sum do |ride|
            ride.distance
        end
    end

    def self.mileage_cap(distance)
        # self.rides.collect do |ride| ### does not work!!!
        #     ride.distance > distance
        # end

        # self.all.select do |driver|  ##works!!
        #     driver.rides.map {|ride| ride.distance}.sum > distance
        # end

        self.all.select do |driver|  ## select, not map bc map tranforms array
            driver.total_distance > distance
        end
    end


  end