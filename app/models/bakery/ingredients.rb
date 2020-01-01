class Ingredient
    @@all = []
    attr_accessor :name, :dessert, :calorie

    def initialize(name, dessert, calorie = 0)
        @name = name
        @dessert = dessert
        @calorie = calorie
        @@all << self
    end

    def self.all
        @@all
    end

    # def dessert
        #attr_accesor
    # end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |ingredients|
            ingredients.name.include?(ingredient)
        end
    end
end
