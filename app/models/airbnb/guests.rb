class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        #returns an array of all trips a guest has made
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        #returns an array of all listings a guest has stayed at
        self.trips.map do |trip|
            trip.listing
        end
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        #returns an array of all guests who have made over 1 trip
        self.all.select do |guest| #using #trips from line 23, find the highest num
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
    #takes an argument of a name (as a string), returns the all guests with that name
        self.all.find_all do |guest|
            guest.name == name
        end 
    end
end