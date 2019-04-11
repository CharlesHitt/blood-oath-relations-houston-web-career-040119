class BloodOath

    @@all = []

    attr_accessor :initiation_date, :follower, :cult

    def initialize (follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end
    
end