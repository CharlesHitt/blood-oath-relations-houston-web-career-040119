

class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select do |bloodoath|
            bloodoath.follower == self
        end
    end

    def cults
        bloodoaths.map do |bloodoath|
            bloodoath.cult
        end
    end

    def join_cult(cult, initiation_date)
        BloodOath.new(self, cult, initiation_date)
    end
        
    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= (age)
        end
    end


end