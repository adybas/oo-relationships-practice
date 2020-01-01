class Listing
    attr_reader :city_name
    @@all = []

    def initialize(city_name)
        @city_name = city_name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
    #returns an array of all trips at a listing
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        #returns an array of all guests who have stayed at a listing
        self.trips.map do |trip|
            trip.guest
        end
    end


    def trip_count
        self.trips.length
    end

    def self.find_all_by_city(city)
    #takes an argument of a city name (as a string) and returns all the listings for that city
        self.all.find_all do |listing|
            listing.city_name == city
        end
    end

    def self.most_popular
    #finds the listing that has had the most trips
        self.all.max_by do |listing| #using #trips from line 14, find the highest num
            #listing.trips.length #gets the same, line 44 is higher abstraction
            listing.trip_count
        end
    end

end
