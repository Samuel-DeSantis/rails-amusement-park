class Ride < ActiveRecord::Base

    belongs_to :attraction
    belongs_to :user

    def take_ride
        self.user.tickets -= 1
        self.user.happiness += self.attraction.happiness_rating
        self.user.nausea += self.attraction.nausea_rating
    end

end
