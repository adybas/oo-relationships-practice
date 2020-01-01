# .most_appearances
# should return which character of film/television appears in the most films or tv shows

class Character
    attr_reader :name, :actor
    @@all - []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end
end