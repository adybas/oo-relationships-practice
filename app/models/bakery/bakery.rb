class Bakery
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts
        Dessert.all.select do |b|
            b.bakery == self
        end
    end

    def ingredients
        # self.desserts.map do |dessert|
        #     dessert.ingredients
        # end.flatten

        Ingredient.all.select do |ing|
            ing.dessert.bakery == self
        end
    end

    def shopping_list
#should return a string of names for ingredients for the bakery
        # self.ingredients.each do |ing|
        #     ing
        # end.map {|i| i.name}
        self.ingredients.map {|ing| ing.name}
    end

    def average_calories
        # total_calories = 0
        # total_calories = self.ingredients.sum do |ing|
        #     ing.calorie
        # end
        # total_calories / self.ingredients.length

        total_calories = self.desserts.sum{|des|des.calories}
        num_of_des = self.desserts.length
        return total_calories / num_of_des
    end

end
