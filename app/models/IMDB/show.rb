#on_the_big_screen
#should return Movies that share the same name as this Show

class Show
    attr_reader :name
    @@all - []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end