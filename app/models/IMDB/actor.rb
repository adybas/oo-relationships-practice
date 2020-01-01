# .most_characters
# should return which actor has the most different characters played. (probably meryl streep)

class Actor
    attr_reader :name
    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # def self.most_characters
    # end

end