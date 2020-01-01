class Dessert
    @@all = []
    attr_reader :name, :bakery

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    # def bakery
        #@bakery
        #attr_reader :bakery
    # end

    def calories #ingredients is set to method in 14
        calorie_count = 0
        self.ingredients.each do |ingredient|
            calorie_count += ingredient.calorie
        end
        calorie_count

        # total_num = self.ingredients.collect do |ing|
        #     ing.calories
        # end
        # total_num.reduce(:+)

        # self.ingredients.sum {|ingredient| ingredient.calories}
    end

    def self.all_dessert_names
        self.all.map do |dessert|
            dessert.name
        end
    end
end